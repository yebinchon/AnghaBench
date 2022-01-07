
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int DECI_KELVIN_TO_MILLICELSIUS (unsigned long long) ;
 int EIO ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;

__attribute__((used)) static int int340x_thermal_get_trip_config(acpi_handle handle, char *name,
          int *temp)
{
 unsigned long long r;
 acpi_status status;

 status = acpi_evaluate_integer(handle, name, ((void*)0), &r);
 if (ACPI_FAILURE(status))
  return -EIO;

 *temp = DECI_KELVIN_TO_MILLICELSIUS(r);

 return 0;
}
