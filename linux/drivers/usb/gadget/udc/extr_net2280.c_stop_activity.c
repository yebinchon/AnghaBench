
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget_driver {int (* disconnect ) (TYPE_1__*) ;} ;
struct TYPE_2__ {scalar_t__ speed; } ;
struct net2280 {int n_ep; int lock; TYPE_1__ gadget; int * ep; } ;


 scalar_t__ USB_SPEED_UNKNOWN ;
 int nuke (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (TYPE_1__*) ;
 int usb_reinit (struct net2280*) ;
 int usb_reset (struct net2280*) ;

__attribute__((used)) static void stop_activity(struct net2280 *dev, struct usb_gadget_driver *driver)
{
 int i;


 if (dev->gadget.speed == USB_SPEED_UNKNOWN)
  driver = ((void*)0);




 usb_reset(dev);
 for (i = 0; i < dev->n_ep; i++)
  nuke(&dev->ep[i]);


 if (driver) {
  spin_unlock(&dev->lock);
  driver->disconnect(&dev->gadget);
  spin_lock(&dev->lock);
 }

 usb_reinit(dev);
}
