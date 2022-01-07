
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 int qeth_l3_only_attr_groups ;
 int sysfs_remove_groups (int *,int ) ;

void qeth_l3_remove_device_attributes(struct device *dev)
{
 sysfs_remove_groups(&dev->kobj, qeth_l3_only_attr_groups);
}
