
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct acpi_device {int dummy; } ;


 scalar_t__ is_usb_device (struct device*) ;
 scalar_t__ is_usb_port (struct device*) ;
 int to_usb_device (struct device*) ;
 int to_usb_port (struct device*) ;
 struct acpi_device* usb_acpi_find_companion_for_device (int ) ;
 struct acpi_device* usb_acpi_find_companion_for_port (int ) ;

__attribute__((used)) static struct acpi_device *usb_acpi_find_companion(struct device *dev)
{
 if (is_usb_device(dev))
  return usb_acpi_find_companion_for_device(to_usb_device(dev));
 else if (is_usb_port(dev))
  return usb_acpi_find_companion_for_port(to_usb_port(dev));

 return ((void*)0);
}
