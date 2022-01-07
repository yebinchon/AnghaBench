
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; void* type; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 void* ACPI_TYPE_INTEGER ;
 int acpi_evaluate_integer (int ,char*,struct acpi_object_list*,unsigned long long*) ;

__attribute__((used)) static acpi_status cmpc_set_brightness(acpi_handle handle,
           unsigned long long value)
{
 union acpi_object param[2];
 struct acpi_object_list input;
 acpi_status status;
 unsigned long long output;

 param[0].type = ACPI_TYPE_INTEGER;
 param[0].integer.value = 0xC0;
 param[1].type = ACPI_TYPE_INTEGER;
 param[1].integer.value = value;
 input.count = 2;
 input.pointer = param;
 status = acpi_evaluate_integer(handle, "GWRI", &input, &output);
 return status;
}
