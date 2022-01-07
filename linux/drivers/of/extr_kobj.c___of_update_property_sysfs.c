
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int dummy; } ;
struct device_node {int dummy; } ;


 int __of_add_property_sysfs (struct device_node*,struct property*) ;
 int __of_sysfs_remove_bin_file (struct device_node*,struct property*) ;
 int of_kset ;

void __of_update_property_sysfs(struct device_node *np, struct property *newprop,
  struct property *oldprop)
{

 if (!of_kset)
  return;

 if (oldprop)
  __of_sysfs_remove_bin_file(np, oldprop);
 __of_add_property_sysfs(np, newprop);
}
