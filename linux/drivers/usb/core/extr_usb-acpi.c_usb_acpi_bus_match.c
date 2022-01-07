
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 scalar_t__ is_usb_device (struct device*) ;
 scalar_t__ is_usb_port (struct device*) ;

__attribute__((used)) static bool usb_acpi_bus_match(struct device *dev)
{
 return is_usb_device(dev) || is_usb_port(dev);
}
