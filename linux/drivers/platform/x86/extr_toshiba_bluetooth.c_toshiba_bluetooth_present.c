
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ENODEV ;
 int ENXIO ;
 int acpi_evaluate_integer (int ,char*,int *,int *) ;
 int pr_err (char*) ;
 int pr_info (char*) ;

__attribute__((used)) static int toshiba_bluetooth_present(acpi_handle handle)
{
 acpi_status result;
 u64 bt_present;






 result = acpi_evaluate_integer(handle, "_STA", ((void*)0), &bt_present);
 if (ACPI_FAILURE(result)) {
  pr_err("ACPI call to query Bluetooth presence failed\n");
  return -ENXIO;
 }

 if (!bt_present) {
  pr_info("Bluetooth device not present\n");
  return -ENODEV;
 }

 return 0;
}
