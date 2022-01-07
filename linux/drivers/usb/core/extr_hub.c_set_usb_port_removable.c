
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct usb_hub {TYPE_5__* descriptor; TYPE_1__** ports; } ;
struct usb_device {int portnum; void* removable; struct usb_device* parent; } ;
struct TYPE_8__ {int* DeviceRemovable; } ;
struct TYPE_7__ {int DeviceRemovable; } ;
struct TYPE_9__ {TYPE_3__ hs; TYPE_2__ ss; } ;
struct TYPE_10__ {TYPE_4__ u; int wHubCharacteristics; } ;
struct TYPE_6__ {int connect_type; } ;


 int HUB_CHAR_COMPOUND ;
 void* USB_DEVICE_FIXED ;
 void* USB_DEVICE_REMOVABLE ;



 scalar_t__ hub_is_superspeed (struct usb_device*) ;
 int le16_to_cpu (int ) ;
 struct usb_hub* usb_hub_to_struct_hub (struct usb_device*) ;

__attribute__((used)) static void set_usb_port_removable(struct usb_device *udev)
{
 struct usb_device *hdev = udev->parent;
 struct usb_hub *hub;
 u8 port = udev->portnum;
 u16 wHubCharacteristics;
 bool removable = 1;

 if (!hdev)
  return;

 hub = usb_hub_to_struct_hub(udev->parent);





 switch (hub->ports[udev->portnum - 1]->connect_type) {
 case 129:
  udev->removable = USB_DEVICE_REMOVABLE;
  return;
 case 130:
 case 128:
  udev->removable = USB_DEVICE_FIXED;
  return;
 default:
  break;
 }





 wHubCharacteristics = le16_to_cpu(hub->descriptor->wHubCharacteristics);

 if (!(wHubCharacteristics & HUB_CHAR_COMPOUND))
  return;

 if (hub_is_superspeed(hdev)) {
  if (le16_to_cpu(hub->descriptor->u.ss.DeviceRemovable)
    & (1 << port))
   removable = 0;
 } else {
  if (hub->descriptor->u.hs.DeviceRemovable[port / 8] & (1 << (port % 8)))
   removable = 0;
 }

 if (removable)
  udev->removable = USB_DEVICE_REMOVABLE;
 else
  udev->removable = USB_DEVICE_FIXED;

}
