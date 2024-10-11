
az login --tenant "<Entra ID guid>"


# Run one of the options below to create a Deployment Stack, NOT BOTH


# Option 1 - Creates a Deployment Stack at the Subscription scope for managing a VNet
az stack sub create `
  --name demoStack-sub `
  --location 'swedencentral' `
  --template-file './main.bicep' `
  --action-on-unmanage 'detachAll' `
  --deny-settings-mode 'denyDelete' `
  --parameters `
    'rgName=demo-rg'


# Option 2 - Creates a Deploment Stack at the Management Group scope for managing a VNet
az stack mg create `
--name demoStack-mg-ikea `
--management-group-id '<Management Group ID guid>' `
--deployment-subscription '<Subscription ID guid>' `
--location 'swedencentral' `
--template-file './main.bicep' `
--action-on-unmanage 'detachAll' `
--deny-settings-mode 'denyDelete' `
--parameters `
  'rgName=demo-rg'