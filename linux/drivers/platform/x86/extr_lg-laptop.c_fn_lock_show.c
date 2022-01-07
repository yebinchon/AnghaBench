
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pointer; } ;
union acpi_object {scalar_t__ type; TYPE_1__ buffer; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ ACPI_TYPE_BUFFER ;
 int EIO ;
 int PAGE_SIZE ;
 int WM_FN_LOCK ;
 int WM_GET ;
 int kfree (union acpi_object*) ;
 union acpi_object* lg_wmab (int ,int ,int ) ;
 int snprintf (char*,int ,char*,unsigned int) ;

__attribute__((used)) static ssize_t fn_lock_show(struct device *dev,
       struct device_attribute *attr, char *buffer)
{
 unsigned int status;
 union acpi_object *r;

 r = lg_wmab(WM_FN_LOCK, WM_GET, 0);
 if (!r)
  return -EIO;

 if (r->type != ACPI_TYPE_BUFFER) {
  kfree(r);
  return -EIO;
 }

 status = !!r->buffer.pointer[0];
 kfree(r);

 return snprintf(buffer, PAGE_SIZE, "%d\n", status);
}
