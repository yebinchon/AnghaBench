
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_group {int dummy; } ;
struct pci_epc_group {struct pci_epc* epc; struct config_group group; } ;
struct pci_epc {int dummy; } ;


 int ENOMEM ;
 struct config_group* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct pci_epc*) ;
 int PTR_ERR (struct pci_epc*) ;
 int config_group_init_type_name (struct config_group*,char const*,int *) ;
 int configfs_register_group (int ,struct config_group*) ;
 int configfs_unregister_group (struct config_group*) ;
 int controllers_group ;
 int kfree (struct pci_epc_group*) ;
 struct pci_epc_group* kzalloc (int,int ) ;
 struct pci_epc* pci_epc_get (char const*) ;
 int pci_epc_type ;
 int pr_err (char*,char const*) ;

struct config_group *pci_ep_cfs_add_epc_group(const char *name)
{
 int ret;
 struct pci_epc *epc;
 struct config_group *group;
 struct pci_epc_group *epc_group;

 epc_group = kzalloc(sizeof(*epc_group), GFP_KERNEL);
 if (!epc_group) {
  ret = -ENOMEM;
  goto err;
 }

 group = &epc_group->group;

 config_group_init_type_name(group, name, &pci_epc_type);
 ret = configfs_register_group(controllers_group, group);
 if (ret) {
  pr_err("failed to register configfs group for %s\n", name);
  goto err_register_group;
 }

 epc = pci_epc_get(name);
 if (IS_ERR(epc)) {
  ret = PTR_ERR(epc);
  goto err_epc_get;
 }

 epc_group->epc = epc;

 return group;

err_epc_get:
 configfs_unregister_group(group);

err_register_group:
 kfree(epc_group);

err:
 return ERR_PTR(ret);
}
