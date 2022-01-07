
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pending_commands; } ;
struct cardstate {int commands_pending; TYPE_2__* ops; int lock; TYPE_1__ at_state; int cidmode; } ;
struct bc_state {int chstate; } ;
struct at_state_t {int seq_index; } ;
struct TYPE_4__ {int (* close_bchannel ) (struct bc_state*) ;} ;


 int CHS_D_UP ;
 int CHS_NOTIFY_LL ;
 int DEBUG_EVENT ;
 int PC_UMMODE ;
 int gig_dbg (int ,char*) ;
 int gigaset_isdn_hupD (struct bc_state*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct bc_state*) ;

__attribute__((used)) static void disconnect_bc(struct at_state_t *at_state,
     struct cardstate *cs, struct bc_state *bcs)
{
 unsigned long flags;

 spin_lock_irqsave(&cs->lock, flags);
 ++at_state->seq_index;


 if (!cs->cidmode) {
  cs->at_state.pending_commands |= PC_UMMODE;
  gig_dbg(DEBUG_EVENT, "Scheduling PC_UMMODE");
  cs->commands_pending = 1;
 }
 spin_unlock_irqrestore(&cs->lock, flags);


 cs->ops->close_bchannel(bcs);


 if (bcs->chstate & (CHS_D_UP | CHS_NOTIFY_LL)) {
  bcs->chstate &= ~(CHS_D_UP | CHS_NOTIFY_LL);
  gigaset_isdn_hupD(bcs);
 }
}
