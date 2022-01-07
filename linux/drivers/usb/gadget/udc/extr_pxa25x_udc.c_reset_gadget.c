
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget_driver {int dummy; } ;
struct TYPE_2__ {scalar_t__ speed; } ;
struct pxa25x_udc {TYPE_1__ gadget; int timer; struct pxa25x_ep* ep; } ;
struct pxa25x_ep {int stopped; } ;


 int ESHUTDOWN ;
 int PXA_UDC_NUM_ENDPOINTS ;
 scalar_t__ USB_SPEED_UNKNOWN ;
 int del_timer_sync (int *) ;
 int nuke (struct pxa25x_ep*,int ) ;
 int udc_reinit (struct pxa25x_udc*) ;
 int usb_gadget_udc_reset (TYPE_1__*,struct usb_gadget_driver*) ;

__attribute__((used)) static void
reset_gadget(struct pxa25x_udc *dev, struct usb_gadget_driver *driver)
{
 int i;


 if (dev->gadget.speed == USB_SPEED_UNKNOWN)
  driver = ((void*)0);
 dev->gadget.speed = USB_SPEED_UNKNOWN;


 for (i = 0; i < PXA_UDC_NUM_ENDPOINTS; i++) {
  struct pxa25x_ep *ep = &dev->ep[i];

  ep->stopped = 1;
  nuke(ep, -ESHUTDOWN);
 }
 del_timer_sync(&dev->timer);


 if (driver)
  usb_gadget_udc_reset(&dev->gadget, driver);


 udc_reinit(dev);
}
