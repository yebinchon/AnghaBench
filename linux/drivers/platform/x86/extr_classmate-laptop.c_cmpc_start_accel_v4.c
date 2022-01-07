
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
 int acpi_evaluate_object (int ,char*,struct acpi_object_list*,int *) ;

__attribute__((used)) static acpi_status cmpc_start_accel_v4(acpi_handle handle)
{
 union acpi_object param[4];
 struct acpi_object_list input;
 acpi_status status;

 param[0].type = ACPI_TYPE_INTEGER;
 param[0].integer.value = 0x3;
 param[1].type = ACPI_TYPE_INTEGER;
 param[1].integer.value = 0;
 param[2].type = ACPI_TYPE_INTEGER;
 param[2].integer.value = 0;
 param[3].type = ACPI_TYPE_INTEGER;
 param[3].integer.value = 0;
 input.count = 4;
 input.pointer = param;
 status = acpi_evaluate_object(handle, "ACMD", &input, ((void*)0));
 return status;
}
