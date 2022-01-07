
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int length; int * pointer; } ;
struct TYPE_3__ {int value; } ;
union acpi_object {TYPE_2__ buffer; void* type; TYPE_1__ integer; } ;
typedef int u8 ;
typedef int u32 ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
struct acpi_buffer {scalar_t__ pointer; int * member_1; int member_0; } ;
typedef int acpi_string ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 void* ACPI_TYPE_BUFFER ;
 void* ACPI_TYPE_INTEGER ;
 scalar_t__ WMBB_METHOD ;
 int acpi_evaluate_object (int ,int *,struct acpi_object_list*,struct acpi_buffer*) ;
 int acpi_get_handle (int *,int ,int *) ;
 int acpi_handle_err (int ,char*) ;
 int pr_err (char*) ;

__attribute__((used)) static union acpi_object *lg_wmbb(u32 method_id, u32 arg1, u32 arg2)
{
 union acpi_object args[3];
 acpi_status status;
 acpi_handle handle;
 struct acpi_object_list arg;
 struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 u8 buf[32];

 *(u32 *)buf = method_id;
 *(u32 *)(buf + 4) = arg1;
 *(u32 *)(buf + 16) = arg2;
 args[0].type = ACPI_TYPE_INTEGER;
 args[0].integer.value = 0;
 args[1].type = ACPI_TYPE_INTEGER;
 args[1].integer.value = 1;
 args[2].type = ACPI_TYPE_BUFFER;
 args[2].buffer.length = 32;
 args[2].buffer.pointer = buf;

 status = acpi_get_handle(((void*)0), (acpi_string)WMBB_METHOD, &handle);
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

 return (union acpi_object *)buffer.pointer;
}
