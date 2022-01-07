
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pointer; } ;
union acpi_object {int length; int result_code; int device_id; int command; int on_time; int off_time; scalar_t__ type; TYPE_1__ buffer; } ;
typedef int u8 ;
struct bios_args {int length; int result_code; int device_id; int command; int on_time; int off_time; scalar_t__ type; TYPE_1__ buffer; } ;
struct acpi_buffer {int length; union acpi_object* pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int) ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 int DELL_LED_BIOS_GUID ;
 int EINVAL ;
 int kfree (union acpi_object*) ;
 int wmi_evaluate_method (int ,int ,int,struct acpi_buffer*,struct acpi_buffer*) ;

__attribute__((used)) static int dell_led_perform_fn(u8 length, u8 result_code, u8 device_id,
          u8 command, u8 on_time, u8 off_time)
{
 struct acpi_buffer output = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 struct bios_args *bios_return;
 struct acpi_buffer input;
 union acpi_object *obj;
 acpi_status status;
 u8 return_code;

 struct bios_args args = {
  .length = length,
  .result_code = result_code,
  .device_id = device_id,
  .command = command,
  .on_time = on_time,
  .off_time = off_time
 };

 input.length = sizeof(struct bios_args);
 input.pointer = &args;

 status = wmi_evaluate_method(DELL_LED_BIOS_GUID, 0, 1, &input, &output);
 if (ACPI_FAILURE(status))
  return status;

 obj = output.pointer;

 if (!obj)
  return -EINVAL;
 if (obj->type != ACPI_TYPE_BUFFER) {
  kfree(obj);
  return -EINVAL;
 }

 bios_return = ((struct bios_args *)obj->buffer.pointer);
 return_code = bios_return->result_code;

 kfree(obj);

 return return_code;
}
