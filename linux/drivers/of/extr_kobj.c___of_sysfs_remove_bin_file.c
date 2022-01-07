
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct property {TYPE_2__ attr; } ;
struct device_node {int kobj; } ;


 int CONFIG_SYSFS ;
 int IS_ENABLED (int ) ;
 int kfree (int ) ;
 int sysfs_remove_bin_file (int *,TYPE_2__*) ;

void __of_sysfs_remove_bin_file(struct device_node *np, struct property *prop)
{
 if (!IS_ENABLED(CONFIG_SYSFS))
  return;

 sysfs_remove_bin_file(&np->kobj, &prop->attr);
 kfree(prop->attr.attr.name);
}
