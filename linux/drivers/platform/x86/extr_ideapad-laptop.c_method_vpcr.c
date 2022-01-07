
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


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_INTEGER ;
 int acpi_evaluate_integer (int ,char*,struct acpi_object_list*,unsigned long long*) ;

__attribute__((used)) static int method_vpcr(acpi_handle handle, int cmd, int *ret)
{
 acpi_status status;
 unsigned long long result;
 struct acpi_object_list params;
 union acpi_object in_obj;

 params.count = 1;
 params.pointer = &in_obj;
 in_obj.type = ACPI_TYPE_INTEGER;
 in_obj.integer.value = cmd;

 status = acpi_evaluate_integer(handle, "VPCR", &params, &result);

 if (ACPI_FAILURE(status)) {
  *ret = -1;
  return -1;
 }
 *ret = result;
 return 0;

}
