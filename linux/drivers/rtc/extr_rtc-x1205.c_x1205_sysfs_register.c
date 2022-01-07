
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_attr_atrim ;
 int dev_attr_dtrim ;
 int device_create_file (struct device*,int *) ;
 int device_remove_file (struct device*,int *) ;

__attribute__((used)) static int x1205_sysfs_register(struct device *dev)
{
 int err;

 err = device_create_file(dev, &dev_attr_atrim);
 if (err)
  return err;

 err = device_create_file(dev, &dev_attr_dtrim);
 if (err)
  device_remove_file(dev, &dev_attr_atrim);

 return err;
}
