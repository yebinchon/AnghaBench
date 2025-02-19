
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_hub {TYPE_3__** ports; } ;
struct usb_device {int portnum; int usb2_hw_lpm_allowed; TYPE_2__* bos; int usb2_hw_lpm_capable; int parent; } ;
struct TYPE_6__ {int connect_type; } ;
struct TYPE_5__ {TYPE_1__* ext_cap; } ;
struct TYPE_4__ {int bmAttributes; } ;


 int USB_BESL_SUPPORT ;
 int USB_PORT_CONNECT_TYPE_HARD_WIRED ;
 int USB_PORT_CONNECT_TYPE_UNKNOWN ;
 int cpu_to_le32 (int ) ;
 int usb_enable_usb2_hardware_lpm (struct usb_device*) ;
 struct usb_hub* usb_hub_to_struct_hub (int ) ;

__attribute__((used)) static void hub_set_initial_usb2_lpm_policy(struct usb_device *udev)
{
 struct usb_hub *hub = usb_hub_to_struct_hub(udev->parent);
 int connect_type = USB_PORT_CONNECT_TYPE_UNKNOWN;

 if (!udev->usb2_hw_lpm_capable || !udev->bos)
  return;

 if (hub)
  connect_type = hub->ports[udev->portnum - 1]->connect_type;

 if ((udev->bos->ext_cap->bmAttributes & cpu_to_le32(USB_BESL_SUPPORT)) ||
   connect_type == USB_PORT_CONNECT_TYPE_HARD_WIRED) {
  udev->usb2_hw_lpm_allowed = 1;
  usb_enable_usb2_hardware_lpm(udev);
 }
}
