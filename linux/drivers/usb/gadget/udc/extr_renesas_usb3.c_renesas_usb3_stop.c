
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget {int dummy; } ;
struct TYPE_2__ {int speed; } ;
struct renesas_usb3 {int softconnect; scalar_t__ phy; int * driver; TYPE_1__ gadget; } ;


 int USB_SPEED_UNKNOWN ;
 struct renesas_usb3* gadget_to_renesas_usb3 (struct usb_gadget*) ;
 int phy_exit (scalar_t__) ;
 int pm_runtime_put (int ) ;
 int renesas_usb3_stop_controller (struct renesas_usb3*) ;
 int usb3_to_dev (struct renesas_usb3*) ;

__attribute__((used)) static int renesas_usb3_stop(struct usb_gadget *gadget)
{
 struct renesas_usb3 *usb3 = gadget_to_renesas_usb3(gadget);

 usb3->softconnect = 0;
 usb3->gadget.speed = USB_SPEED_UNKNOWN;
 usb3->driver = ((void*)0);
 renesas_usb3_stop_controller(usb3);

 if (usb3->phy)
  phy_exit(usb3->phy);

 pm_runtime_put(usb3_to_dev(usb3));

 return 0;
}
