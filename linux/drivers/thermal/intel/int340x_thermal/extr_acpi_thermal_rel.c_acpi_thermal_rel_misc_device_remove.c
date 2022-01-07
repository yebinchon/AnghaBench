
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_handle ;


 int acpi_thermal_rel_misc_device ;
 int misc_deregister (int *) ;

int acpi_thermal_rel_misc_device_remove(acpi_handle handle)
{
 misc_deregister(&acpi_thermal_rel_misc_device);

 return 0;
}
