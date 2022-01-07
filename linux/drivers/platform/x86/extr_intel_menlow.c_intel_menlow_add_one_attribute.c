
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int umode_t ;
struct TYPE_3__ {char* name; int mode; } ;
struct TYPE_4__ {void* store; void* show; TYPE_1__ attr; } ;
struct intel_menlow_attribute {int node; TYPE_2__ attr; int handle; struct device* device; } ;
struct device {int dummy; } ;
typedef int acpi_handle ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int device_create_file (struct device*,TYPE_2__*) ;
 int intel_menlow_attr_list ;
 int intel_menlow_attr_lock ;
 int kfree (struct intel_menlow_attribute*) ;
 struct intel_menlow_attribute* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sysfs_attr_init (TYPE_1__*) ;

__attribute__((used)) static int intel_menlow_add_one_attribute(char *name, umode_t mode, void *show,
       void *store, struct device *dev,
       acpi_handle handle)
{
 struct intel_menlow_attribute *attr;
 int result;

 attr = kzalloc(sizeof(struct intel_menlow_attribute), GFP_KERNEL);
 if (!attr)
  return -ENOMEM;

 sysfs_attr_init(&attr->attr.attr);
 attr->attr.attr.name = name;
 attr->attr.attr.mode = mode;
 attr->attr.show = show;
 attr->attr.store = store;
 attr->device = dev;
 attr->handle = handle;

 result = device_create_file(dev, &attr->attr);
 if (result) {
  kfree(attr);
  return result;
 }

 mutex_lock(&intel_menlow_attr_lock);
 list_add_tail(&attr->node, &intel_menlow_attr_list);
 mutex_unlock(&intel_menlow_attr_lock);

 return 0;
}
