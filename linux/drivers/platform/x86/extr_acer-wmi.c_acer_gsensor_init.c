
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_object {int dummy; } acpi_object ;
struct acpi_buffer {int length; union acpi_object* pointer; } ;
typedef int out_obj ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int acpi_evaluate_object (int ,char*,int *,struct acpi_buffer*) ;
 int gsensor_handle ;

__attribute__((used)) static int acer_gsensor_init(void)
{
 acpi_status status;
 struct acpi_buffer output;
 union acpi_object out_obj;

 output.length = sizeof(out_obj);
 output.pointer = &out_obj;
 status = acpi_evaluate_object(gsensor_handle, "_INI", ((void*)0), &output);
 if (ACPI_FAILURE(status))
  return -1;

 return 0;
}
