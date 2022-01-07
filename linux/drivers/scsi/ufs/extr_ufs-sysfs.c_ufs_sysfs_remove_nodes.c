
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 int sysfs_remove_groups (int *,int ) ;
 int ufs_sysfs_groups ;

void ufs_sysfs_remove_nodes(struct device *dev)
{
 sysfs_remove_groups(&dev->kobj, ufs_sysfs_groups);
}
