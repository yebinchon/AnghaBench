
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int count; TYPE_2__* elements; } ;
union acpi_object {scalar_t__ type; TYPE_3__ package; } ;
struct acpi_pld_info {scalar_t__ user_visible; } ;
struct acpi_buffer {union acpi_object* pointer; int * member_1; int member_0; } ;
typedef enum usb_port_connect_type { ____Placeholder_usb_port_connect_type } usb_port_connect_type ;
typedef int acpi_status ;
typedef int acpi_handle ;
struct TYPE_4__ {scalar_t__ value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int USB_PORT_CONNECT_TYPE_HARD_WIRED ;
 int USB_PORT_CONNECT_TYPE_HOT_PLUG ;
 int USB_PORT_CONNECT_TYPE_UNKNOWN ;
 int USB_PORT_NOT_USED ;
 int acpi_evaluate_object (int ,char*,int *,struct acpi_buffer*) ;
 int kfree (union acpi_object*) ;

__attribute__((used)) static enum usb_port_connect_type usb_acpi_get_connect_type(acpi_handle handle,
  struct acpi_pld_info *pld)
{
 enum usb_port_connect_type connect_type = USB_PORT_CONNECT_TYPE_UNKNOWN;
 struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object *upc;
 acpi_status status;
 status = acpi_evaluate_object(handle, "_UPC", ((void*)0), &buffer);
 upc = buffer.pointer;
 if (!upc || (upc->type != ACPI_TYPE_PACKAGE)
  || upc->package.count != 4) {
  goto out;
 }

 if (upc->package.elements[0].integer.value)
  if (pld->user_visible)
   connect_type = USB_PORT_CONNECT_TYPE_HOT_PLUG;
  else
   connect_type = USB_PORT_CONNECT_TYPE_HARD_WIRED;
 else if (!pld->user_visible)
  connect_type = USB_PORT_NOT_USED;
out:
 kfree(upc);
 return connect_type;
}
