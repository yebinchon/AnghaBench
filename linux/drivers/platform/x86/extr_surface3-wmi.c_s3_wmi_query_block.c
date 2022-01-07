
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
struct TYPE_3__ {int length; } ;
union acpi_object {scalar_t__ type; TYPE_2__ integer; TYPE_1__ buffer; } ;
struct acpi_buffer {union acpi_object* pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 int EINVAL ;
 int kfree (union acpi_object*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,scalar_t__,int ) ;
 int s3_wmi_lock ;
 int wmi_query_block (char const*,int,struct acpi_buffer*) ;

__attribute__((used)) static int s3_wmi_query_block(const char *guid, int instance, int *ret)
{
 struct acpi_buffer output = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 acpi_status status;
 union acpi_object *obj;
 int error = 0;

 mutex_lock(&s3_wmi_lock);
 status = wmi_query_block(guid, instance, &output);

 obj = output.pointer;

 if (!obj || obj->type != ACPI_TYPE_INTEGER) {
  if (obj) {
   pr_err("query block returned object type: %d - buffer length:%d\n",
          obj->type,
          obj->type == ACPI_TYPE_BUFFER ?
      obj->buffer.length : 0);
  }
  error = -EINVAL;
  goto out_free_unlock;
 }
 *ret = obj->integer.value;
 out_free_unlock:
 kfree(obj);
 mutex_unlock(&s3_wmi_lock);
 return error;
}
