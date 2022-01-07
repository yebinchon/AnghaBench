
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hub {int dummy; } ;
struct usb_device {int dummy; } ;


 int kick_hub_wq (struct usb_hub*) ;
 struct usb_hub* usb_hub_to_struct_hub (struct usb_device*) ;

void usb_kick_hub_wq(struct usb_device *hdev)
{
 struct usb_hub *hub = usb_hub_to_struct_hub(hdev);

 if (hub)
  kick_hub_wq(hub);
}
