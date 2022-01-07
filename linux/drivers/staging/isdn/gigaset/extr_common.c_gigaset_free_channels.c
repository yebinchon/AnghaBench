
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cardstate {int channels; int lock; TYPE_1__* bcs; } ;
struct TYPE_2__ {int use_count; } ;


 int DEBUG_CHANNEL ;
 int gig_dbg (int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void gigaset_free_channels(struct cardstate *cs)
{
 unsigned long flags;
 int i;

 gig_dbg(DEBUG_CHANNEL, "unblocking all channels");
 spin_lock_irqsave(&cs->lock, flags);
 for (i = 0; i < cs->channels; ++i)
  --cs->bcs[i].use_count;
 spin_unlock_irqrestore(&cs->lock, flags);
}
