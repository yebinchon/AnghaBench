
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_object {int dummy; } acpi_object ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int EIO ;
 int WM_BATT_LIMIT ;
 int WM_SET ;
 int kfree (union acpi_object*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 union acpi_object* lg_wmab (int ,int ,unsigned long) ;

__attribute__((used)) static ssize_t battery_care_limit_store(struct device *dev,
     struct device_attribute *attr,
     const char *buffer, size_t count)
{
 unsigned long value;
 int ret;

 ret = kstrtoul(buffer, 10, &value);
 if (ret)
  return ret;

 if (value == 100 || value == 80) {
  union acpi_object *r;

  r = lg_wmab(WM_BATT_LIMIT, WM_SET, value);
  if (!r)
   return -EIO;

  kfree(r);
  return count;
 }

 return -EINVAL;
}
