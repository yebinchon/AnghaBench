
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ acpi_status ;
typedef int acpi_handle ;


 scalar_t__ AE_OK ;
 scalar_t__ acpi_execute_simple_method (int ,char*,int) ;

__attribute__((used)) static int write_acpi_int(acpi_handle handle, const char *method, int val)
{
 acpi_status status;

 status = acpi_execute_simple_method(handle, (char *)method, val);

 return (status == AE_OK ? 0 : -1);
}
