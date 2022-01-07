
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;

__attribute__((used)) static int read_method_int(acpi_handle handle, const char *method, int *val)
{
 acpi_status status;
 unsigned long long result;

 status = acpi_evaluate_integer(handle, (char *)method, ((void*)0), &result);
 if (ACPI_FAILURE(status)) {
  *val = -1;
  return -1;
 }
 *val = result;
 return 0;

}
