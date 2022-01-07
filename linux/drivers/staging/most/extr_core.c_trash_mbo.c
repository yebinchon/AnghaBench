
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct most_channel {int fifo_lock; int trash_fifo; } ;
struct mbo {int list; struct most_channel* context; } ;


 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void trash_mbo(struct mbo *mbo)
{
 unsigned long flags;
 struct most_channel *c = mbo->context;

 spin_lock_irqsave(&c->fifo_lock, flags);
 list_add(&mbo->list, &c->trash_fifo);
 spin_unlock_irqrestore(&c->fifo_lock, flags);
}
