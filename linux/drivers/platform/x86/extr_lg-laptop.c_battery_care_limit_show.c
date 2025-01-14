
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int value; } ;
union acpi_object {scalar_t__ type; TYPE_1__ integer; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ ACPI_TYPE_INTEGER ;
 int EIO ;
 int PAGE_SIZE ;
 int WM_BATT_LIMIT ;
 int WM_GET ;
 int kfree (union acpi_object*) ;
 union acpi_object* lg_wmab (int ,int ,int ) ;
 int snprintf (char*,int ,char*,unsigned int) ;

__attribute__((used)) static ssize_t battery_care_limit_show(struct device *dev,
           struct device_attribute *attr,
           char *buffer)
{
 unsigned int status;
 union acpi_object *r;

 r = lg_wmab(WM_BATT_LIMIT, WM_GET, 0);
 if (!r)
  return -EIO;

 if (r->type != ACPI_TYPE_INTEGER) {
  kfree(r);
  return -EIO;
 }

 status = r->integer.value;
 kfree(r);
 if (status != 80 && status != 100)
  status = 0;

 return snprintf(buffer, PAGE_SIZE, "%d\n", status);
}
