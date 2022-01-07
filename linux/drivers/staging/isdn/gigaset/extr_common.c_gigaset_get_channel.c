
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bc_state {int busy; TYPE_2__* cs; int channel; scalar_t__ use_count; } ;
struct TYPE_4__ {int lock; TYPE_1__* driver; } ;
struct TYPE_3__ {int owner; } ;


 int DEBUG_CHANNEL ;
 int EBUSY ;
 int gig_dbg (int ,char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int try_module_get (int ) ;

int gigaset_get_channel(struct bc_state *bcs)
{
 unsigned long flags;

 spin_lock_irqsave(&bcs->cs->lock, flags);
 if (bcs->use_count || !try_module_get(bcs->cs->driver->owner)) {
  gig_dbg(DEBUG_CHANNEL, "could not allocate channel %d",
   bcs->channel);
  spin_unlock_irqrestore(&bcs->cs->lock, flags);
  return -EBUSY;
 }
 ++bcs->use_count;
 bcs->busy = 1;
 gig_dbg(DEBUG_CHANNEL, "allocated channel %d", bcs->channel);
 spin_unlock_irqrestore(&bcs->cs->lock, flags);
 return 0;
}
