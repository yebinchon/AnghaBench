
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dlpar_attr_group ;
 int dlpar_kobj ;
 int kobject_put (int ) ;
 int sysfs_remove_group (int ,int *) ;

void dlpar_sysfs_exit(void)
{
 sysfs_remove_group(dlpar_kobj, &dlpar_attr_group);
 kobject_put(dlpar_kobj);
}
