
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_port {int location; int connect_type; } ;
struct acpi_pld_info {int group_token; int group_position; } ;
struct acpi_device {int * handle; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_FAILURE (int ) ;
 int ACPI_FREE (struct acpi_pld_info*) ;
 int USB_ACPI_LOCATION_VALID ;
 int acpi_get_physical_device_location (int *,struct acpi_pld_info**) ;
 struct acpi_device* usb_acpi_get_companion_for_port (struct usb_port*) ;
 int usb_acpi_get_connect_type (int *,struct acpi_pld_info*) ;

__attribute__((used)) static struct acpi_device *
usb_acpi_find_companion_for_port(struct usb_port *port_dev)
{
 struct acpi_device *adev;
 struct acpi_pld_info *pld;
 acpi_handle *handle;
 acpi_status status;

 adev = usb_acpi_get_companion_for_port(port_dev);
 if (!adev)
  return ((void*)0);

 handle = adev->handle;
 status = acpi_get_physical_device_location(handle, &pld);
 if (!ACPI_FAILURE(status) && pld) {
  port_dev->location = USB_ACPI_LOCATION_VALID
   | pld->group_token << 8 | pld->group_position;
  port_dev->connect_type = usb_acpi_get_connect_type(handle, pld);
  ACPI_FREE(pld);
 }

 return adev;
}
