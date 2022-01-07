
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget_driver {int (* disconnect ) (TYPE_1__*) ;} ;
struct TYPE_2__ {scalar_t__ speed; } ;
struct mtu3 {int num_eps; int lock; TYPE_1__ g; scalar_t__ out_eps; scalar_t__ in_eps; scalar_t__ ep0; scalar_t__ softconnect; struct usb_gadget_driver* gadget_driver; } ;


 int ESHUTDOWN ;
 scalar_t__ USB_SPEED_UNKNOWN ;
 int mtu3_dev_on_off (struct mtu3*,int ) ;
 int nuke (scalar_t__,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void stop_activity(struct mtu3 *mtu)
{
 struct usb_gadget_driver *driver = mtu->gadget_driver;
 int i;


 if (mtu->g.speed == USB_SPEED_UNKNOWN)
  driver = ((void*)0);
 else
  mtu->g.speed = USB_SPEED_UNKNOWN;


 if (mtu->softconnect) {
  mtu->softconnect = 0;
  mtu3_dev_on_off(mtu, 0);
 }





 nuke(mtu->ep0, -ESHUTDOWN);
 for (i = 1; i < mtu->num_eps; i++) {
  nuke(mtu->in_eps + i, -ESHUTDOWN);
  nuke(mtu->out_eps + i, -ESHUTDOWN);
 }

 if (driver) {
  spin_unlock(&mtu->lock);
  driver->disconnect(&mtu->g);
  spin_lock(&mtu->lock);
 }
}
