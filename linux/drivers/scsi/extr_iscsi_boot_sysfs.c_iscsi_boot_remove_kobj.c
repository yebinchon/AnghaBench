
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_boot_kobj {int kobj; int attr_group; int list; } ;


 int kobject_put (int *) ;
 int list_del (int *) ;
 int sysfs_remove_group (int *,int ) ;

__attribute__((used)) static void iscsi_boot_remove_kobj(struct iscsi_boot_kobj *boot_kobj)
{
 list_del(&boot_kobj->list);
 sysfs_remove_group(&boot_kobj->kobj, boot_kobj->attr_group);
 kobject_put(&boot_kobj->kobj);
}
