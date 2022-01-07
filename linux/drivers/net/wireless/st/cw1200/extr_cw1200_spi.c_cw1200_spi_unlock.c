
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwbus_priv {int wq; int lock; scalar_t__ claimed; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void cw1200_spi_unlock(struct hwbus_priv *self)
{
 unsigned long flags;

 spin_lock_irqsave(&self->lock, flags);
 self->claimed = 0;
 spin_unlock_irqrestore(&self->lock, flags);
 wake_up(&self->wq);

 return;
}
