
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 scalar_t__ acpi_has_method (int ,char*) ;

__attribute__((used)) static int pcihp_is_ejectable(acpi_handle handle)
{
 acpi_status status;
 unsigned long long removable;
 if (!acpi_has_method(handle, "_ADR"))
  return 0;
 if (acpi_has_method(handle, "_EJ0"))
  return 1;
 status = acpi_evaluate_integer(handle, "_RMV", ((void*)0), &removable);
 if (ACPI_SUCCESS(status) && removable)
  return 1;
 return 0;
}
