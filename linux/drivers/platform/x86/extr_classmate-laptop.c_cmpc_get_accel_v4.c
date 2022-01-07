
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pointer; } ;
struct TYPE_3__ {int value; } ;
union acpi_object {TYPE_2__ buffer; TYPE_1__ integer; void* type; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
struct acpi_buffer {union acpi_object* pointer; int * member_1; int member_0; } ;
typedef int int16_t ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 void* ACPI_TYPE_INTEGER ;
 int acpi_evaluate_object (int ,char*,struct acpi_object_list*,struct acpi_buffer*) ;
 int kfree (union acpi_object*) ;

__attribute__((used)) static acpi_status cmpc_get_accel_v4(acpi_handle handle,
         int16_t *x,
         int16_t *y,
         int16_t *z)
{
 union acpi_object param[4];
 struct acpi_object_list input;
 struct acpi_buffer output = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 int16_t *locs;
 acpi_status status;

 param[0].type = ACPI_TYPE_INTEGER;
 param[0].integer.value = 0x01;
 param[1].type = ACPI_TYPE_INTEGER;
 param[1].integer.value = 0;
 param[2].type = ACPI_TYPE_INTEGER;
 param[2].integer.value = 0;
 param[3].type = ACPI_TYPE_INTEGER;
 param[3].integer.value = 0;
 input.count = 4;
 input.pointer = param;
 status = acpi_evaluate_object(handle, "ACMD", &input, &output);
 if (ACPI_SUCCESS(status)) {
  union acpi_object *obj;
  obj = output.pointer;
  locs = (int16_t *) obj->buffer.pointer;
  *x = locs[0];
  *y = locs[1];
  *z = locs[2];
  kfree(output.pointer);
 }
 return status;
}
