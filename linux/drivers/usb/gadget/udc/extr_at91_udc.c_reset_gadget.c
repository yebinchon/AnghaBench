
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget_driver {int dummy; } ;
struct TYPE_2__ {scalar_t__ speed; } ;
struct at91_udc {int lock; TYPE_1__ gadget; struct at91_ep* ep; scalar_t__ suspended; struct usb_gadget_driver* driver; } ;
struct at91_ep {int stopped; } ;


 int ESHUTDOWN ;
 int NUM_ENDPOINTS ;
 scalar_t__ USB_SPEED_UNKNOWN ;
 int nuke (struct at91_ep*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int udc_reinit (struct at91_udc*) ;
 int usb_gadget_udc_reset (TYPE_1__*,struct usb_gadget_driver*) ;

__attribute__((used)) static void reset_gadget(struct at91_udc *udc)
{
 struct usb_gadget_driver *driver = udc->driver;
 int i;

 if (udc->gadget.speed == USB_SPEED_UNKNOWN)
  driver = ((void*)0);
 udc->gadget.speed = USB_SPEED_UNKNOWN;
 udc->suspended = 0;

 for (i = 0; i < NUM_ENDPOINTS; i++) {
  struct at91_ep *ep = &udc->ep[i];

  ep->stopped = 1;
  nuke(ep, -ESHUTDOWN);
 }
 if (driver) {
  spin_unlock(&udc->lock);
  usb_gadget_udc_reset(&udc->gadget, driver);
  spin_lock(&udc->lock);
 }

 udc_reinit(udc);
}
