
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdns3_device {int lock; int gadget; TYPE_1__* gadget_driver; } ;
struct TYPE_2__ {int (* disconnect ) (int *) ;} ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int *) ;

__attribute__((used)) static void cdns3_disconnect_gadget(struct cdns3_device *priv_dev)
{
 if (priv_dev->gadget_driver && priv_dev->gadget_driver->disconnect) {
  spin_unlock(&priv_dev->lock);
  priv_dev->gadget_driver->disconnect(&priv_dev->gadget);
  spin_lock(&priv_dev->lock);
 }
}
