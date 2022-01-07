
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hub {TYPE_1__* hdev; } ;
struct usb_hcd {int wireless; } ;
struct TYPE_2__ {int bus; int * parent; } ;


 struct usb_hcd* bus_to_hcd (int ) ;

__attribute__((used)) static unsigned hub_is_wusb(struct usb_hub *hub)
{
 struct usb_hcd *hcd;
 if (hub->hdev->parent != ((void*)0))
  return 0;
 hcd = bus_to_hcd(hub->hdev->bus);
 return hcd->wireless;
}
