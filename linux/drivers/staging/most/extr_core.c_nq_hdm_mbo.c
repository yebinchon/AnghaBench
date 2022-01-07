
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct most_channel {int hdm_fifo_wq; int fifo_lock; int halt_fifo; } ;
struct mbo {int list; struct most_channel* context; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void nq_hdm_mbo(struct mbo *mbo)
{
 unsigned long flags;
 struct most_channel *c = mbo->context;

 spin_lock_irqsave(&c->fifo_lock, flags);
 list_add_tail(&mbo->list, &c->halt_fifo);
 spin_unlock_irqrestore(&c->fifo_lock, flags);
 wake_up_interruptible(&c->hdm_fifo_wq);
}
