
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ENXIO ;
 int acpi_evaluate_object (int ,char*,int *,int *) ;
 int pr_err (char*) ;

__attribute__((used)) static int toshiba_bluetooth_disable(acpi_handle handle)
{
 acpi_status result;

 result = acpi_evaluate_object(handle, "BTPF", ((void*)0), ((void*)0));
 if (ACPI_FAILURE(result)) {
  pr_err("Could not power OFF Bluetooth device\n");
  return -ENXIO;
 }

 result = acpi_evaluate_object(handle, "DUSB", ((void*)0), ((void*)0));
 if (ACPI_FAILURE(result)) {
  pr_err("Could not detach USB Bluetooth device\n");
  return -ENXIO;
 }

 return 0;
}
