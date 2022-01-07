
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int attr_group ;
 int ecryptfs_kobj ;
 int kobject_put (int ) ;
 int sysfs_remove_group (int ,int *) ;

__attribute__((used)) static void do_sysfs_unregistration(void)
{
 sysfs_remove_group(ecryptfs_kobj, &attr_group);
 kobject_put(ecryptfs_kobj);
}
