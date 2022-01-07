
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_attr_glitch_filter ;
 int dev_attr_trickle_charger ;
 int device_create_file (struct device*,int *) ;
 int device_remove_file (struct device*,int *) ;

__attribute__((used)) static int ds1343_sysfs_register(struct device *dev)
{
 int err;

 err = device_create_file(dev, &dev_attr_glitch_filter);
 if (err)
  return err;

 err = device_create_file(dev, &dev_attr_trickle_charger);
 if (!err)
  return 0;

 device_remove_file(dev, &dev_attr_glitch_filter);

 return err;
}
