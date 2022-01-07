
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardstate {int commands_pending; int dev; } ;
struct bc_state {int proto2; int channel; int ** commands; } ;
struct at_state_t {int pending_commands; struct cardstate* cs; struct bc_state* bcs; } ;


 size_t AT_ISO ;
 int AT_NUM ;
 size_t AT_PROTO ;
 int DEBUG_EVENT ;
 int GFP_ATOMIC ;
 int PC_ACCEPT ;
 int PC_HUP ;
 int dev_err (int ,char*) ;
 int gig_dbg (int ,char*) ;
 int kfree (int *) ;
 void* kmalloc (int,int ) ;
 int snprintf (int *,int,char*,int) ;

__attribute__((used)) static void start_accept(struct at_state_t *at_state)
{
 struct cardstate *cs = at_state->cs;
 struct bc_state *bcs = at_state->bcs;
 int i;

 for (i = 0; i < AT_NUM; ++i) {
  kfree(bcs->commands[i]);
  bcs->commands[i] = ((void*)0);
 }

 bcs->commands[AT_PROTO] = kmalloc(9, GFP_ATOMIC);
 bcs->commands[AT_ISO] = kmalloc(9, GFP_ATOMIC);
 if (!bcs->commands[AT_PROTO] || !bcs->commands[AT_ISO]) {
  dev_err(at_state->cs->dev, "out of memory\n");

  at_state->pending_commands |= PC_HUP;
  gig_dbg(DEBUG_EVENT, "Scheduling PC_HUP");
  cs->commands_pending = 1;
  return;
 }

 snprintf(bcs->commands[AT_PROTO], 9, "^SBPR=%u\r", bcs->proto2);
 snprintf(bcs->commands[AT_ISO], 9, "^SISO=%u\r", bcs->channel + 1);

 at_state->pending_commands |= PC_ACCEPT;
 gig_dbg(DEBUG_EVENT, "Scheduling PC_ACCEPT");
 cs->commands_pending = 1;
}
