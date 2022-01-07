
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gasket_sysfs_mapping {int attribute_count; struct gasket_sysfs_attribute* attributes; } ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct gasket_sysfs_attribute {TYPE_2__ attr; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*,int ) ;
 struct gasket_sysfs_mapping* get_mapping (struct device*) ;
 int put_mapping_n (struct gasket_sysfs_mapping*,int) ;

void gasket_sysfs_put_attr(struct device *device,
      struct gasket_sysfs_attribute *attr)
{
 int i;
 int num_attrs;
 struct gasket_sysfs_mapping *mapping = get_mapping(device);
 struct gasket_sysfs_attribute *attrs = ((void*)0);

 if (!mapping)
  return;

 attrs = mapping->attributes;
 num_attrs = mapping->attribute_count;
 for (i = 0; i < num_attrs; ++i) {
  if (&attrs[i] == attr) {
   put_mapping_n(mapping, 2);
   return;
  }
 }

 dev_err(device, "Unable to put unknown attribute: %s\n",
  attr->attr.attr.name);
}
