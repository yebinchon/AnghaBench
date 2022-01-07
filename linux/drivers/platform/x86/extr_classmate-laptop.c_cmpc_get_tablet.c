
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; int type; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_TYPE_INTEGER ;
 int acpi_evaluate_integer (int ,char*,struct acpi_object_list*,unsigned long long*) ;

__attribute__((used)) static acpi_status cmpc_get_tablet(acpi_handle handle,
       unsigned long long *value)
{
 union acpi_object param;
 struct acpi_object_list input;
 unsigned long long output;
 acpi_status status;

 param.type = ACPI_TYPE_INTEGER;
 param.integer.value = 0x01;
 input.count = 1;
 input.pointer = &param;
 status = acpi_evaluate_integer(handle, "TCMD", &input, &output);
 if (ACPI_SUCCESS(status))
  *value = output;
 return status;
}
