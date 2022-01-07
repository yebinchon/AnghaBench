
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int lock; struct mite_channel* mite_chan; } ;
struct mite_channel {int dummy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ni_tio_set_mite_channel(struct ni_gpct *counter,
        struct mite_channel *mite_chan)
{
 unsigned long flags;

 spin_lock_irqsave(&counter->lock, flags);
 counter->mite_chan = mite_chan;
 spin_unlock_irqrestore(&counter->lock, flags);
}
