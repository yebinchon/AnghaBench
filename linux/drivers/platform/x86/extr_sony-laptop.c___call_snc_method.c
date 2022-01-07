
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; int type; } ;
typedef int u64 ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
struct acpi_buffer {scalar_t__ pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_INTEGER ;
 int acpi_evaluate_object (int ,char*,struct acpi_object_list*,struct acpi_buffer*) ;
 int dprintk (char*,char*,...) ;
 int pr_err (char*,char*) ;

__attribute__((used)) static union acpi_object *__call_snc_method(acpi_handle handle, char *method,
  u64 *value)
{
 union acpi_object *result = ((void*)0);
 struct acpi_buffer output = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 acpi_status status;

 if (value) {
  struct acpi_object_list params;
  union acpi_object in;
  in.type = ACPI_TYPE_INTEGER;
  in.integer.value = *value;
  params.count = 1;
  params.pointer = &in;
  status = acpi_evaluate_object(handle, method, &params, &output);
  dprintk("__call_snc_method: [%s:0x%.8x%.8x]\n", method,
    (unsigned int)(*value >> 32),
    (unsigned int)*value & 0xffffffff);
 } else {
  status = acpi_evaluate_object(handle, method, ((void*)0), &output);
  dprintk("__call_snc_method: [%s]\n", method);
 }

 if (ACPI_FAILURE(status)) {
  pr_err("Failed to evaluate [%s]\n", method);
  return ((void*)0);
 }

 result = (union acpi_object *) output.pointer;
 if (!result)
  dprintk("No return object [%s]\n", method);

 return result;
}
