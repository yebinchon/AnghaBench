
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnt_private {int lock; TYPE_1__* usb; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vnt_start_interrupt_urb (struct vnt_private*) ;

int vnt_int_start_interrupt(struct vnt_private *priv)
{
 int ret = 0;
 unsigned long flags;

 dev_dbg(&priv->usb->dev, "---->Interrupt Polling Thread\n");

 spin_lock_irqsave(&priv->lock, flags);

 ret = vnt_start_interrupt_urb(priv);

 spin_unlock_irqrestore(&priv->lock, flags);

 return ret;
}
