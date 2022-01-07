
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gasket_sysfs_mapping {int dummy; } ;
struct gasket_dev {int dummy; } ;
struct device {int dummy; } ;


 struct gasket_sysfs_mapping* get_mapping (struct device*) ;
 int put_mapping_n (struct gasket_sysfs_mapping*,int) ;

void gasket_sysfs_put_device_data(struct device *device, struct gasket_dev *dev)
{
 struct gasket_sysfs_mapping *mapping = get_mapping(device);

 if (!mapping)
  return;


 put_mapping_n(mapping, 2);
}
