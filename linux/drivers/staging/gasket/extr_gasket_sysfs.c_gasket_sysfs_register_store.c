
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong ;
struct gasket_sysfs_mapping {struct gasket_dev* gasket_dev; } ;
struct TYPE_3__ {int offset; int bar; } ;
struct TYPE_4__ {TYPE_1__ bar_address; } ;
struct gasket_sysfs_attribute {int (* write_callback ) (struct gasket_dev*,struct gasket_sysfs_attribute*,int ) ;TYPE_2__ data; } ;
struct gasket_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int dev_err (struct device*,char*,...) ;
 int gasket_dev_write_64 (struct gasket_dev*,int ,int ,int ) ;
 struct gasket_sysfs_attribute* gasket_sysfs_get_attr (struct device*,struct device_attribute*) ;
 int gasket_sysfs_put_attr (struct device*,struct gasket_sysfs_attribute*) ;
 struct gasket_sysfs_mapping* get_mapping (struct device*) ;
 scalar_t__ kstrtoul (char const*,int,int *) ;
 int put_mapping (struct gasket_sysfs_mapping*) ;
 int stub1 (struct gasket_dev*,struct gasket_sysfs_attribute*,int ) ;

ssize_t gasket_sysfs_register_store(struct device *device,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 ulong parsed_value = 0;
 struct gasket_sysfs_mapping *mapping;
 struct gasket_dev *gasket_dev;
 struct gasket_sysfs_attribute *gasket_attr;

 if (count < 3 || buf[0] != '0' || buf[1] != 'x') {
  dev_err(device,
   "sysfs register write format: \"0x<hex value>\"\n");
  return -EINVAL;
 }

 if (kstrtoul(buf, 16, &parsed_value) != 0) {
  dev_err(device,
   "Unable to parse input as 64-bit hex value: %s\n", buf);
  return -EINVAL;
 }

 mapping = get_mapping(device);
 if (!mapping) {
  dev_err(device, "Device driver may have been removed\n");
  return 0;
 }

 gasket_dev = mapping->gasket_dev;
 if (!gasket_dev) {
  dev_err(device, "Device driver may have been removed\n");
  return 0;
 }

 gasket_attr = gasket_sysfs_get_attr(device, attr);
 if (!gasket_attr) {
  put_mapping(mapping);
  return count;
 }

 gasket_dev_write_64(gasket_dev, parsed_value,
       gasket_attr->data.bar_address.bar,
       gasket_attr->data.bar_address.offset);

 if (gasket_attr->write_callback)
  gasket_attr->write_callback(gasket_dev, gasket_attr,
         parsed_value);

 gasket_sysfs_put_attr(device, gasket_attr);
 put_mapping(mapping);
 return count;
}
