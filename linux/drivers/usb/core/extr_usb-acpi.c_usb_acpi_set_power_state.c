
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_port {int dev; } ;
struct usb_hub {struct usb_port** ports; } ;
struct usb_device {int dummy; } ;
typedef scalar_t__ acpi_handle ;


 unsigned char ACPI_STATE_D0 ;
 unsigned char ACPI_STATE_D3_COLD ;
 int EINVAL ;
 int ENODEV ;
 int acpi_bus_set_power (scalar_t__,unsigned char) ;
 int dev_dbg (int *,char*,...) ;
 scalar_t__ usb_get_hub_port_acpi_handle (struct usb_device*,int) ;
 struct usb_hub* usb_hub_to_struct_hub (struct usb_device*) ;

int usb_acpi_set_power_state(struct usb_device *hdev, int index, bool enable)
{
 struct usb_hub *hub = usb_hub_to_struct_hub(hdev);
 struct usb_port *port_dev;
 acpi_handle port_handle;
 unsigned char state;
 int port1 = index + 1;
 int error = -EINVAL;

 if (!hub)
  return -ENODEV;
 port_dev = hub->ports[port1 - 1];

 port_handle = (acpi_handle) usb_get_hub_port_acpi_handle(hdev, port1);
 if (!port_handle)
  return error;

 if (enable)
  state = ACPI_STATE_D0;
 else
  state = ACPI_STATE_D3_COLD;

 error = acpi_bus_set_power(port_handle, state);
 if (!error)
  dev_dbg(&port_dev->dev, "acpi: power was set to %d\n", enable);
 else
  dev_dbg(&port_dev->dev, "acpi: power failed to be set\n");

 return error;
}
