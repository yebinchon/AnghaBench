
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* value; } ;
union acpi_object {TYPE_1__ integer; void* type; } ;
typedef void* u32 ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
struct acpi_buffer {union acpi_object* pointer; int * member_1; int member_0; } ;
typedef int acpi_string ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 void* ACPI_TYPE_INTEGER ;
 scalar_t__ WMAB_METHOD ;
 int acpi_evaluate_object (int ,int *,struct acpi_object_list*,struct acpi_buffer*) ;
 int acpi_get_handle (int *,int ,int *) ;
 int acpi_handle_err (int ,char*) ;
 int pr_err (char*) ;

__attribute__((used)) static union acpi_object *lg_wmab(u32 method, u32 arg1, u32 arg2)
{
 union acpi_object args[3];
 acpi_status status;
 acpi_handle handle;
 struct acpi_object_list arg;
 struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, ((void*)0) };

 args[0].type = ACPI_TYPE_INTEGER;
 args[0].integer.value = method;
 args[1].type = ACPI_TYPE_INTEGER;
 args[1].integer.value = arg1;
 args[2].type = ACPI_TYPE_INTEGER;
 args[2].integer.value = arg2;

 status = acpi_get_handle(((void*)0), (acpi_string) WMAB_METHOD, &handle);
 if (ACPI_FAILURE(status)) {
  pr_err("Cannot get handle");
  return ((void*)0);
 }

 arg.count = 3;
 arg.pointer = args;

 status = acpi_evaluate_object(handle, ((void*)0), &arg, &buffer);
 if (ACPI_FAILURE(status)) {
  acpi_handle_err(handle, "WMAB: call failed.\n");
  return ((void*)0);
 }

 return buffer.pointer;
}
