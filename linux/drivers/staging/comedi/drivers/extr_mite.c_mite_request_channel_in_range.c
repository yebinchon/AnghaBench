
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mite_ring {int dummy; } ;
struct mite_channel {struct mite_ring* ring; } ;
struct mite {int lock; struct mite_channel* channels; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct mite_channel *mite_request_channel_in_range(struct mite *mite,
         struct mite_ring *ring,
         unsigned int min_channel,
         unsigned int max_channel)
{
 struct mite_channel *mite_chan = ((void*)0);
 unsigned long flags;
 int i;





 spin_lock_irqsave(&mite->lock, flags);
 for (i = min_channel; i <= max_channel; ++i) {
  mite_chan = &mite->channels[i];
  if (!mite_chan->ring) {
   mite_chan->ring = ring;
   break;
  }
  mite_chan = ((void*)0);
 }
 spin_unlock_irqrestore(&mite->lock, flags);
 return mite_chan;
}
