
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardstate {int commands_pending; int lock; } ;
struct bc_state {char** commands; int chstate; } ;
struct at_state_t {unsigned int seq_index; int pending_commands; struct cardstate* cs; struct bc_state* bcs; } ;


 int AT_NUM ;
 int CHS_NOTIFY_LL ;
 int DEBUG_EVENT ;
 int PC_CID ;
 int PC_NOCID ;
 int gig_dbg (int ,char*) ;
 int kfree (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void start_dial(struct at_state_t *at_state, void *data,
         unsigned seq_index)
{
 struct bc_state *bcs = at_state->bcs;
 struct cardstate *cs = at_state->cs;
 char **commands = data;
 unsigned long flags;
 int i;

 bcs->chstate |= CHS_NOTIFY_LL;

 spin_lock_irqsave(&cs->lock, flags);
 if (at_state->seq_index != seq_index) {
  spin_unlock_irqrestore(&cs->lock, flags);
  goto error;
 }
 spin_unlock_irqrestore(&cs->lock, flags);

 for (i = 0; i < AT_NUM; ++i) {
  kfree(bcs->commands[i]);
  bcs->commands[i] = commands[i];
 }

 at_state->pending_commands |= PC_CID;
 gig_dbg(DEBUG_EVENT, "Scheduling PC_CID");
 cs->commands_pending = 1;
 return;

error:
 for (i = 0; i < AT_NUM; ++i) {
  kfree(commands[i]);
  commands[i] = ((void*)0);
 }
 at_state->pending_commands |= PC_NOCID;
 gig_dbg(DEBUG_EVENT, "Scheduling PC_NOCID");
 cs->commands_pending = 1;
 return;
}
