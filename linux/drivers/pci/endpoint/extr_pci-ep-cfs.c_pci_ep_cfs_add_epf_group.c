
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_group {int dummy; } ;


 scalar_t__ IS_ERR (struct config_group*) ;
 struct config_group* configfs_register_default_group (int ,char const*,int *) ;
 int functions_group ;
 int pci_epf_group_type ;
 int pr_err (char*,char const*) ;

struct config_group *pci_ep_cfs_add_epf_group(const char *name)
{
 struct config_group *group;

 group = configfs_register_default_group(functions_group, name,
      &pci_epf_group_type);
 if (IS_ERR(group))
  pr_err("failed to register configfs group for %s function\n",
         name);

 return group;
}
