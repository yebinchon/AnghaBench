
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget_driver {int (* disconnect ) (TYPE_1__*) ;} ;
struct TYPE_2__ {scalar_t__ speed; } ;
struct at91_udc {int lock; TYPE_1__ gadget; struct at91_ep* ep; scalar_t__ suspended; struct usb_gadget_driver* driver; } ;
struct at91_ep {int stopped; } ;


 int ESHUTDOWN ;
 int NUM_ENDPOINTS ;
 scalar_t__ USB_SPEED_UNKNOWN ;
 int nuke (struct at91_ep*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (TYPE_1__*) ;
 int udc_reinit (struct at91_udc*) ;

__attribute__((used)) static void stop_activity(struct at91_udc *udc)
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
  driver->disconnect(&udc->gadget);
  spin_lock(&udc->lock);
 }

 udc_reinit(udc);
}
