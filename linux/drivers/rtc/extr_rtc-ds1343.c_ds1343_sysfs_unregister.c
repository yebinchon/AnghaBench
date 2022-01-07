
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_attr_glitch_filter ;
 int dev_attr_trickle_charger ;
 int device_remove_file (struct device*,int *) ;

__attribute__((used)) static void ds1343_sysfs_unregister(struct device *dev)
{
 device_remove_file(dev, &dev_attr_glitch_filter);
 device_remove_file(dev, &dev_attr_trickle_charger);
}
