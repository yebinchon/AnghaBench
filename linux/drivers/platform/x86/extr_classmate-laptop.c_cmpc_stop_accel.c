
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {void* type; TYPE_1__ integer; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 void* ACPI_TYPE_INTEGER ;
 int acpi_evaluate_object (int ,char*,struct acpi_object_list*,int *) ;

__attribute__((used)) static acpi_status cmpc_stop_accel(acpi_handle handle)
{
 union acpi_object param[2];
 struct acpi_object_list input;
 acpi_status status;

 param[0].type = ACPI_TYPE_INTEGER;
 param[0].integer.value = 0x4;
 param[1].type = ACPI_TYPE_INTEGER;
 input.count = 2;
 input.pointer = param;
 status = acpi_evaluate_object(handle, "ACMD", &input, ((void*)0));
 return status;
}
