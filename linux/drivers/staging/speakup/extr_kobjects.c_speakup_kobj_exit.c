
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int accessibility_kobj ;
 int i18n_attr_group ;
 int kobject_put (int ) ;
 int main_attr_group ;
 int speakup_kobj ;
 int sysfs_remove_group (int ,int *) ;

void speakup_kobj_exit(void)
{
 sysfs_remove_group(speakup_kobj, &i18n_attr_group);
 sysfs_remove_group(speakup_kobj, &main_attr_group);
 kobject_put(speakup_kobj);
 kobject_put(accessibility_kobj);
}
