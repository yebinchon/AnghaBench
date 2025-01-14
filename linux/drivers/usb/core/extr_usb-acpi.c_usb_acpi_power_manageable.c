
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
typedef scalar_t__ acpi_handle ;


 int acpi_bus_power_manageable (scalar_t__) ;
 scalar_t__ usb_get_hub_port_acpi_handle (struct usb_device*,int) ;

bool usb_acpi_power_manageable(struct usb_device *hdev, int index)
{
 acpi_handle port_handle;
 int port1 = index + 1;

 port_handle = usb_get_hub_port_acpi_handle(hdev,
  port1);
 if (port_handle)
  return acpi_bus_power_manageable(port_handle);
 else
  return 0;
}
