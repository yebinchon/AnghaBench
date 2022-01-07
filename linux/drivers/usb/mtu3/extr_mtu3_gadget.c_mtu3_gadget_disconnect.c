
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtu3 {int g; int lock; TYPE_1__* gadget_driver; int dev; } ;
struct TYPE_2__ {int (* disconnect ) (int *) ;} ;


 int USB_STATE_NOTATTACHED ;
 int dev_dbg (int ,char*) ;
 int mtu3_state_reset (struct mtu3*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int *) ;
 int usb_gadget_set_state (int *,int ) ;

void mtu3_gadget_disconnect(struct mtu3 *mtu)
{
 dev_dbg(mtu->dev, "gadget DISCONNECT\n");
 if (mtu->gadget_driver && mtu->gadget_driver->disconnect) {
  spin_unlock(&mtu->lock);
  mtu->gadget_driver->disconnect(&mtu->g);
  spin_lock(&mtu->lock);
 }

 mtu3_state_reset(mtu);
 usb_gadget_set_state(&mtu->g, USB_STATE_NOTATTACHED);
}
