
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gasket_sysfs_mapping {struct gasket_dev* gasket_dev; } ;
struct gasket_dev {int dummy; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*) ;
 struct gasket_sysfs_mapping* get_mapping (struct device*) ;

struct gasket_dev *gasket_sysfs_get_device_data(struct device *device)
{
 struct gasket_sysfs_mapping *mapping = get_mapping(device);

 if (!mapping) {
  dev_err(device, "device not registered\n");
  return ((void*)0);
 }

 return mapping->gasket_dev;
}
