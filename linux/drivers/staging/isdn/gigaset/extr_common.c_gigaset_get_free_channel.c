
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cardstate {int channels; int lock; TYPE_1__* driver; struct bc_state* bcs; } ;
struct bc_state {int busy; int use_count; } ;
struct TYPE_2__ {int owner; } ;


 int DEBUG_CHANNEL ;
 int gig_dbg (int ,char*,...) ;
 int module_put (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int try_module_get (int ) ;

struct bc_state *gigaset_get_free_channel(struct cardstate *cs)
{
 unsigned long flags;
 int i;

 spin_lock_irqsave(&cs->lock, flags);
 if (!try_module_get(cs->driver->owner)) {
  gig_dbg(DEBUG_CHANNEL,
   "could not get module for allocating channel");
  spin_unlock_irqrestore(&cs->lock, flags);
  return ((void*)0);
 }
 for (i = 0; i < cs->channels; ++i)
  if (!cs->bcs[i].use_count) {
   ++cs->bcs[i].use_count;
   cs->bcs[i].busy = 1;
   spin_unlock_irqrestore(&cs->lock, flags);
   gig_dbg(DEBUG_CHANNEL, "allocated channel %d", i);
   return cs->bcs + i;
  }
 module_put(cs->driver->owner);
 spin_unlock_irqrestore(&cs->lock, flags);
 gig_dbg(DEBUG_CHANNEL, "no free channel");
 return ((void*)0);
}
