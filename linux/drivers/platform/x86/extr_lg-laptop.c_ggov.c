
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {scalar_t__ type; TYPE_1__ integer; } ;
typedef int u32 ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
struct acpi_buffer {union acpi_object* pointer; int * member_1; int member_0; } ;
typedef int acpi_string ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ SB_GGOV_METHOD ;
 int acpi_evaluate_object (int ,int *,struct acpi_object_list*,struct acpi_buffer*) ;
 int acpi_get_handle (int *,int ,int *) ;
 int acpi_handle_err (int ,char*) ;
 int kfree (union acpi_object*) ;
 int pr_err (char*) ;

__attribute__((used)) static int ggov(u32 arg0)
{
 union acpi_object args[1];
 union acpi_object *r;
 acpi_status status;
 acpi_handle handle;
 struct acpi_object_list arg;
 struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 int res;

 args[0].type = ACPI_TYPE_INTEGER;
 args[0].integer.value = arg0;

 status = acpi_get_handle(((void*)0), (acpi_string) SB_GGOV_METHOD, &handle);
 if (ACPI_FAILURE(status)) {
  pr_err("Cannot get handle");
  return -ENODEV;
 }

 arg.count = 1;
 arg.pointer = args;

 status = acpi_evaluate_object(handle, ((void*)0), &arg, &buffer);
 if (ACPI_FAILURE(status)) {
  acpi_handle_err(handle, "GGOV: call failed.\n");
  return -EINVAL;
 }

 r = buffer.pointer;
 if (r->type != ACPI_TYPE_INTEGER) {
  kfree(r);
  return -EINVAL;
 }

 res = r->integer.value;
 kfree(r);

 return res;
}
