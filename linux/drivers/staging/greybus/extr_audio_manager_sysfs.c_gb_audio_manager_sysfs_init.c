
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;


 int manager_add_attribute ;
 int manager_dump_attribute ;
 int manager_remove_attribute ;
 int manager_sysfs_init_attribute (struct kobject*,int *) ;

void gb_audio_manager_sysfs_init(struct kobject *kobj)
{
 manager_sysfs_init_attribute(kobj, &manager_add_attribute);
 manager_sysfs_init_attribute(kobj, &manager_remove_attribute);
 manager_sysfs_init_attribute(kobj, &manager_dump_attribute);
}
