
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gasket_sysfs_mapping {size_t attribute_count; int mutex; struct gasket_sysfs_attribute* attributes; } ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct gasket_sysfs_attribute {TYPE_2__ attr; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GASKET_ARRAY_END_MARKER ;
 size_t GASKET_SYSFS_MAX_NODES ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*) ;
 int device_create_file (struct device*,TYPE_2__*) ;
 struct gasket_sysfs_mapping* get_mapping (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_mapping (struct gasket_sysfs_mapping*) ;
 scalar_t__ strcmp (int ,int ) ;

int gasket_sysfs_create_entries(struct device *device,
    const struct gasket_sysfs_attribute *attrs)
{
 int i;
 int ret;
 struct gasket_sysfs_mapping *mapping = get_mapping(device);

 if (!mapping) {
  dev_dbg(device,
   "Creating entries for device without first initializing mapping\n");
  return -EINVAL;
 }

 mutex_lock(&mapping->mutex);
 for (i = 0; strcmp(attrs[i].attr.attr.name, GASKET_ARRAY_END_MARKER);
  i++) {
  if (mapping->attribute_count == GASKET_SYSFS_MAX_NODES) {
   dev_err(device,
    "Maximum number of sysfs nodes reached for device\n");
   mutex_unlock(&mapping->mutex);
   put_mapping(mapping);
   return -ENOMEM;
  }

  ret = device_create_file(device, &attrs[i].attr);
  if (ret) {
   dev_dbg(device, "Unable to create device entries\n");
   mutex_unlock(&mapping->mutex);
   put_mapping(mapping);
   return ret;
  }

  mapping->attributes[mapping->attribute_count] = attrs[i];
  ++mapping->attribute_count;
 }

 mutex_unlock(&mapping->mutex);
 put_mapping(mapping);
 return 0;
}
