
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; void* type; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
typedef scalar_t__ acpi_status ;
typedef int acpi_handle ;


 void* ACPI_TYPE_INTEGER ;
 scalar_t__ AE_OK ;
 scalar_t__ acpi_evaluate_object (int ,char*,struct acpi_object_list*,int *) ;

__attribute__((used)) static int method_vpcw(acpi_handle handle, int cmd, int data)
{
 struct acpi_object_list params;
 union acpi_object in_obj[2];
 acpi_status status;

 params.count = 2;
 params.pointer = in_obj;
 in_obj[0].type = ACPI_TYPE_INTEGER;
 in_obj[0].integer.value = cmd;
 in_obj[1].type = ACPI_TYPE_INTEGER;
 in_obj[1].integer.value = data;

 status = acpi_evaluate_object(handle, "VPCW", &params, ((void*)0));
 if (status != AE_OK)
  return -1;
 return 0;
}
