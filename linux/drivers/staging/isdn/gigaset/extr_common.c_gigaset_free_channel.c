
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bc_state {TYPE_2__* cs; int channel; scalar_t__ busy; int use_count; } ;
struct TYPE_4__ {int lock; TYPE_1__* driver; } ;
struct TYPE_3__ {int owner; } ;


 int DEBUG_CHANNEL ;
 int gig_dbg (int ,char*,int ) ;
 int module_put (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void gigaset_free_channel(struct bc_state *bcs)
{
 unsigned long flags;

 spin_lock_irqsave(&bcs->cs->lock, flags);
 if (!bcs->busy) {
  gig_dbg(DEBUG_CHANNEL, "could not free channel %d",
   bcs->channel);
  spin_unlock_irqrestore(&bcs->cs->lock, flags);
  return;
 }
 --bcs->use_count;
 bcs->busy = 0;
 module_put(bcs->cs->driver->owner);
 gig_dbg(DEBUG_CHANNEL, "freed channel %d", bcs->channel);
 spin_unlock_irqrestore(&bcs->cs->lock, flags);
}
