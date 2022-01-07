
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtu3 {int lock; int g; TYPE_1__* gadget_driver; int dev; } ;
struct TYPE_2__ {int (* resume ) (int *) ;} ;


 int dev_dbg (int ,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int *) ;

void mtu3_gadget_resume(struct mtu3 *mtu)
{
 dev_dbg(mtu->dev, "gadget RESUME\n");
 if (mtu->gadget_driver && mtu->gadget_driver->resume) {
  spin_unlock(&mtu->lock);
  mtu->gadget_driver->resume(&mtu->g);
  spin_lock(&mtu->lock);
 }
}
