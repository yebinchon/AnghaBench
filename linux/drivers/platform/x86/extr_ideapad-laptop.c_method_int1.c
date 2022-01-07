
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int acpi_execute_simple_method (int ,char*,int) ;

__attribute__((used)) static int method_int1(acpi_handle handle, char *method, int cmd)
{
 acpi_status status;

 status = acpi_execute_simple_method(handle, method, cmd);
 return ACPI_FAILURE(status) ? -1 : 0;
}
