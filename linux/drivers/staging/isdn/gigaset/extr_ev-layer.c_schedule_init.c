
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pending_commands; } ;
struct cardstate {int mstate; int commands_pending; TYPE_1__ at_state; int mode; } ;


 int DEBUG_EVENT ;
 int M_UNKNOWN ;
 int PC_INIT ;
 int gig_dbg (int ,char*) ;
 int gigaset_block_channels (struct cardstate*) ;

__attribute__((used)) static void schedule_init(struct cardstate *cs, int state)
{
 if (cs->at_state.pending_commands & PC_INIT) {
  gig_dbg(DEBUG_EVENT, "not scheduling PC_INIT again");
  return;
 }
 cs->mstate = state;
 cs->mode = M_UNKNOWN;
 gigaset_block_channels(cs);
 cs->at_state.pending_commands |= PC_INIT;
 gig_dbg(DEBUG_EVENT, "Scheduling PC_INIT");
 cs->commands_pending = 1;
}
