
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; int type; } ;
union acpi_object {TYPE_1__ integer; } ;
struct acpi_object_list {int member_0; union acpi_object* member_1; } ;
struct acpi_device {int handle; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_INTEGER ;
 int ENODEV ;
 int acpi_evaluate_integer (int ,char*,struct acpi_object_list*,unsigned long long*) ;
 int acpi_handle_debug (int ,char*,int,int,int,int,int) ;
 int acpi_handle_err (int ,char*) ;

__attribute__((used)) static int call_fext_func(struct acpi_device *device,
     int func, int op, int feature, int state)
{
 union acpi_object params[4] = {
  { .integer.type = ACPI_TYPE_INTEGER, .integer.value = func },
  { .integer.type = ACPI_TYPE_INTEGER, .integer.value = op },
  { .integer.type = ACPI_TYPE_INTEGER, .integer.value = feature },
  { .integer.type = ACPI_TYPE_INTEGER, .integer.value = state }
 };
 struct acpi_object_list arg_list = { 4, params };
 unsigned long long value;
 acpi_status status;

 status = acpi_evaluate_integer(device->handle, "FUNC", &arg_list,
           &value);
 if (ACPI_FAILURE(status)) {
  acpi_handle_err(device->handle, "Failed to evaluate FUNC\n");
  return -ENODEV;
 }

 acpi_handle_debug(device->handle,
     "FUNC 0x%x (args 0x%x, 0x%x, 0x%x) returned 0x%x\n",
     func, op, feature, state, (int)value);
 return value;
}
