
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_handle ;


 int acpi_thermal_rel_handle ;
 int acpi_thermal_rel_misc_device ;
 int misc_register (int *) ;

int acpi_thermal_rel_misc_device_add(acpi_handle handle)
{
 acpi_thermal_rel_handle = handle;

 return misc_register(&acpi_thermal_rel_misc_device);
}
