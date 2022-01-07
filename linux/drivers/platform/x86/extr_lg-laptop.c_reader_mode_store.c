
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_object {int dummy; } acpi_object ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int WM_READER_MODE ;
 int WM_SET ;
 int kfree (union acpi_object*) ;
 int kstrtobool (char const*,int*) ;
 union acpi_object* lg_wmab (int ,int ,int) ;

__attribute__((used)) static ssize_t reader_mode_store(struct device *dev,
     struct device_attribute *attr,
     const char *buffer, size_t count)
{
 bool value;
 union acpi_object *r;
 int ret;

 ret = kstrtobool(buffer, &value);
 if (ret)
  return ret;

 r = lg_wmab(WM_READER_MODE, WM_SET, value);
 if (!r)
  return -EIO;

 kfree(r);
 return count;
}
