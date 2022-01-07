
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_group {int dummy; } ;


 scalar_t__ IS_ERR_OR_NULL (struct config_group*) ;
 int configfs_unregister_default_group (struct config_group*) ;

void pci_ep_cfs_remove_epf_group(struct config_group *group)
{
 if (IS_ERR_OR_NULL(group))
  return;

 configfs_unregister_default_group(group);
}
