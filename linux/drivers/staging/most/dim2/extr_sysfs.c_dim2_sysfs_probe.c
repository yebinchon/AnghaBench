
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int groups; } ;


 int dev_attr_groups ;
 int device_register (struct device*) ;

int dim2_sysfs_probe(struct device *dev)
{
 dev->groups = dev_attr_groups;
 return device_register(dev);
}
