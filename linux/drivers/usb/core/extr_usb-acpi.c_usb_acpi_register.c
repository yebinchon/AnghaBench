
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int register_acpi_bus_type (int *) ;
 int usb_acpi_bus ;

int usb_acpi_register(void)
{
 return register_acpi_bus_type(&usb_acpi_bus);
}
