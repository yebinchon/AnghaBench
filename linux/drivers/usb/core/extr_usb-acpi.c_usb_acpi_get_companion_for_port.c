
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* parent; } ;
struct usb_port {int portnum; TYPE_2__ dev; } ;
struct usb_device {int portnum; int parent; int bus; int dev; } ;
struct acpi_device {int dummy; } ;
typedef int acpi_handle ;
struct TYPE_3__ {int parent; } ;


 struct acpi_device* ACPI_COMPANION (int *) ;
 int acpi_bus_get_device (int *,struct acpi_device**) ;
 int bus_to_hcd (int ) ;
 struct usb_device* to_usb_device (int ) ;
 struct acpi_device* usb_acpi_find_port (struct acpi_device*,int) ;
 int * usb_get_hub_port_acpi_handle (int ,int ) ;
 int usb_hcd_find_raw_port_number (int ,int) ;

__attribute__((used)) static struct acpi_device *
usb_acpi_get_companion_for_port(struct usb_port *port_dev)
{
 struct usb_device *udev;
 struct acpi_device *adev;
 acpi_handle *parent_handle;
 int port1;


 udev = to_usb_device(port_dev->dev.parent->parent);






 if (!udev->parent) {
  adev = ACPI_COMPANION(&udev->dev);
  port1 = usb_hcd_find_raw_port_number(bus_to_hcd(udev->bus),
           port_dev->portnum);
 } else {
  parent_handle = usb_get_hub_port_acpi_handle(udev->parent,
            udev->portnum);
  if (!parent_handle)
   return ((void*)0);

  acpi_bus_get_device(parent_handle, &adev);
  port1 = port_dev->portnum;
 }

 return usb_acpi_find_port(adev, port1);
}
