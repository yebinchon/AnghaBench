
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_port {int dummy; } ;
struct usb_hub {struct usb_port** ports; } ;
struct TYPE_2__ {int parent; } ;
struct usb_device {int portnum; int parent; TYPE_1__ dev; } ;
struct acpi_device {int dummy; } ;


 struct acpi_device* ACPI_COMPANION (int ) ;
 struct acpi_device* acpi_find_child_device (struct acpi_device*,int ,int) ;
 struct acpi_device* usb_acpi_get_companion_for_port (struct usb_port*) ;
 struct usb_hub* usb_hub_to_struct_hub (int ) ;

__attribute__((used)) static struct acpi_device *
usb_acpi_find_companion_for_device(struct usb_device *udev)
{
 struct acpi_device *adev;
 struct usb_port *port_dev;
 struct usb_hub *hub;

 if (!udev->parent) {

  adev = ACPI_COMPANION(udev->dev.parent);
  return acpi_find_child_device(adev, 0, 0);
 }

 hub = usb_hub_to_struct_hub(udev->parent);
 if (!hub)
  return ((void*)0);





 port_dev = hub->ports[udev->portnum - 1];
 return usb_acpi_get_companion_for_port(port_dev);
}
