
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int dummy; } ;
struct device_node {int dummy; } ;


 int __of_sysfs_remove_bin_file (struct device_node*,struct property*) ;
 scalar_t__ of_kset ;
 scalar_t__ of_node_is_attached (struct device_node*) ;

void __of_remove_property_sysfs(struct device_node *np, struct property *prop)
{

 if (of_kset && of_node_is_attached(np))
  __of_sysfs_remove_bin_file(np, prop);
}
