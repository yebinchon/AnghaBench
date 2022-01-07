
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget_driver {int (* disconnect ) (TYPE_1__*) ;} ;
struct TYPE_2__ {scalar_t__ speed; } ;
struct lpc32xx_udc {int lock; TYPE_1__ gadget; struct lpc32xx_ep* ep; scalar_t__ suspended; struct usb_gadget_driver* driver; } ;
struct lpc32xx_ep {int dummy; } ;


 int ESHUTDOWN ;
 int NUM_ENDPOINTS ;
 scalar_t__ USB_SPEED_UNKNOWN ;
 int isp1301_pullup_enable (struct lpc32xx_udc*,int ,int ) ;
 int nuke (struct lpc32xx_ep*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (TYPE_1__*) ;
 int udc_disable (struct lpc32xx_udc*) ;
 int udc_reinit (struct lpc32xx_udc*) ;

__attribute__((used)) static void stop_activity(struct lpc32xx_udc *udc)
{
 struct usb_gadget_driver *driver = udc->driver;
 int i;

 if (udc->gadget.speed == USB_SPEED_UNKNOWN)
  driver = ((void*)0);

 udc->gadget.speed = USB_SPEED_UNKNOWN;
 udc->suspended = 0;

 for (i = 0; i < NUM_ENDPOINTS; i++) {
  struct lpc32xx_ep *ep = &udc->ep[i];
  nuke(ep, -ESHUTDOWN);
 }
 if (driver) {
  spin_unlock(&udc->lock);
  driver->disconnect(&udc->gadget);
  spin_lock(&udc->lock);
 }

 isp1301_pullup_enable(udc, 0, 0);
 udc_disable(udc);
 udc_reinit(udc);
}
