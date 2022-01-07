
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 int qeth_l2_only_attr_groups ;
 int sysfs_create_groups (int *,int ) ;

int qeth_l2_create_device_attributes(struct device *dev)
{
 return sysfs_create_groups(&dev->kobj, qeth_l2_only_attr_groups);
}
