
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gasket_sysfs_mapping {int dummy; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*) ;
 struct gasket_sysfs_mapping* get_mapping (struct device*) ;
 int put_mapping_n (struct gasket_sysfs_mapping*,int) ;

void gasket_sysfs_remove_mapping(struct device *device)
{
 struct gasket_sysfs_mapping *mapping = get_mapping(device);

 if (!mapping) {
  dev_err(device,
   "Attempted to remove non-existent sysfs mapping to device\n");
  return;
 }

 put_mapping_n(mapping, 2);
}
