
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gasket_sysfs_mapping {int attribute_count; struct gasket_sysfs_attribute* attributes; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_5__ {TYPE_1__ attr; } ;
struct gasket_sysfs_attribute {TYPE_2__ attr; } ;
struct TYPE_6__ {int name; } ;
struct device_attribute {TYPE_3__ attr; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*,int ) ;
 struct gasket_sysfs_mapping* get_mapping (struct device*) ;
 int strcmp (int ,int ) ;

struct gasket_sysfs_attribute *
gasket_sysfs_get_attr(struct device *device, struct device_attribute *attr)
{
 int i;
 int num_attrs;
 struct gasket_sysfs_mapping *mapping = get_mapping(device);
 struct gasket_sysfs_attribute *attrs = ((void*)0);

 if (!mapping)
  return ((void*)0);

 attrs = mapping->attributes;
 num_attrs = mapping->attribute_count;
 for (i = 0; i < num_attrs; ++i) {
  if (!strcmp(attrs[i].attr.attr.name, attr->attr.name))
   return &attrs[i];
 }

 dev_err(device, "Unable to find match for device_attribute %s\n",
  attr->attr.name);
 return ((void*)0);
}
