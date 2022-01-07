
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pch_udc_dev {int vbus_session; int lock; int gadget; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* disconnect ) (int *) ;} ;


 int pch_udc_reconnect (struct pch_udc_dev*) ;
 int pch_udc_set_disconnect (struct pch_udc_dev*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int *) ;

__attribute__((used)) static inline void pch_udc_vbus_session(struct pch_udc_dev *dev,
       int is_active)
{
 if (is_active) {
  pch_udc_reconnect(dev);
  dev->vbus_session = 1;
 } else {
  if (dev->driver && dev->driver->disconnect) {
   spin_lock(&dev->lock);
   dev->driver->disconnect(&dev->gadget);
   spin_unlock(&dev->lock);
  }
  pch_udc_set_disconnect(dev);
  dev->vbus_session = 0;
 }
}
