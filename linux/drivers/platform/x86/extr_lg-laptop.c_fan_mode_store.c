
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {scalar_t__ type; TYPE_1__ integer; } ;
typedef int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ ACPI_TYPE_INTEGER ;
 int EIO ;
 int WM_FAN_MODE ;
 int WM_GET ;
 int WM_SET ;
 int kfree (union acpi_object*) ;
 int kstrtobool (char const*,int*) ;
 union acpi_object* lg_wmab (int ,int ,int) ;

__attribute__((used)) static ssize_t fan_mode_store(struct device *dev,
         struct device_attribute *attr,
         const char *buffer, size_t count)
{
 bool value;
 union acpi_object *r;
 u32 m;
 int ret;

 ret = kstrtobool(buffer, &value);
 if (ret)
  return ret;

 r = lg_wmab(WM_FAN_MODE, WM_GET, 0);
 if (!r)
  return -EIO;

 if (r->type != ACPI_TYPE_INTEGER) {
  kfree(r);
  return -EIO;
 }

 m = r->integer.value;
 kfree(r);
 r = lg_wmab(WM_FAN_MODE, WM_SET, (m & 0xffffff0f) | (value << 4));
 kfree(r);
 r = lg_wmab(WM_FAN_MODE, WM_SET, (m & 0xfffffff0) | value);
 kfree(r);

 return count;
}
