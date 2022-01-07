
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pending_commands; } ;
struct cardstate {int commands_pending; int lock; TYPE_1__ at_state; int cidmode; } ;
struct at_state_t {int list; int seq_index; } ;


 int DEBUG_EVENT ;
 int PC_UMMODE ;
 int gig_dbg (int ,char*) ;
 int kfree (struct at_state_t*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void disconnect_nobc(struct at_state_t **at_state_p,
       struct cardstate *cs)
{
 unsigned long flags;

 spin_lock_irqsave(&cs->lock, flags);
 ++(*at_state_p)->seq_index;


 if (!cs->cidmode) {
  cs->at_state.pending_commands |= PC_UMMODE;
  gig_dbg(DEBUG_EVENT, "Scheduling PC_UMMODE");
  cs->commands_pending = 1;
 }


 if (!list_empty(&(*at_state_p)->list)) {
  list_del(&(*at_state_p)->list);
  kfree(*at_state_p);
  *at_state_p = ((void*)0);
 }

 spin_unlock_irqrestore(&cs->lock, flags);
}
