
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ENXIO ;
 int acpi_evaluate_integer (int ,char*,int *,int*) ;
 int pr_err (char*) ;

__attribute__((used)) static int toshiba_bluetooth_status(acpi_handle handle)
{
 acpi_status result;
 u64 status;

 result = acpi_evaluate_integer(handle, "BTST", ((void*)0), &status);
 if (ACPI_FAILURE(result)) {
  pr_err("Could not get Bluetooth device status\n");
  return -ENXIO;
 }

 return status;
}
