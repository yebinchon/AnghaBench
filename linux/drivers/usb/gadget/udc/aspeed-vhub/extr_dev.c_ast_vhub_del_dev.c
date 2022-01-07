
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ast_vhub_dev {int registered; int port_dev; int gadget; TYPE_1__* vhub; } ;
struct TYPE_2__ {int lock; } ;


 int device_unregister (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_del_gadget_udc (int *) ;

void ast_vhub_del_dev(struct ast_vhub_dev *d)
{
 unsigned long flags;

 spin_lock_irqsave(&d->vhub->lock, flags);
 if (!d->registered) {
  spin_unlock_irqrestore(&d->vhub->lock, flags);
  return;
 }
 d->registered = 0;
 spin_unlock_irqrestore(&d->vhub->lock, flags);

 usb_del_gadget_udc(&d->gadget);
 device_unregister(d->port_dev);
}
