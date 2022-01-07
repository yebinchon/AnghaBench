
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mite_channel {int done; struct mite* mite; } ;
struct mite {int lock; } ;


 int mite_get_status (struct mite_channel*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int mite_done(struct mite_channel *mite_chan)
{
 struct mite *mite = mite_chan->mite;
 unsigned long flags;
 int done;

 mite_get_status(mite_chan);
 spin_lock_irqsave(&mite->lock, flags);
 done = mite_chan->done;
 spin_unlock_irqrestore(&mite->lock, flags);
 return done;
}
