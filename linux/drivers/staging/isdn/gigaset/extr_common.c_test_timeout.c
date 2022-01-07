
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at_state_t {int timer_index; int cs; scalar_t__ timer_expires; } ;


 int DEBUG_MCMD ;
 int EV_TIMEOUT ;
 int gig_dbg (int ,char*,struct at_state_t*,scalar_t__) ;
 int gigaset_add_event (int ,struct at_state_t*,int ,int *,int ,int *) ;

__attribute__((used)) static int test_timeout(struct at_state_t *at_state)
{
 if (!at_state->timer_expires)
  return 0;

 if (--at_state->timer_expires) {
  gig_dbg(DEBUG_MCMD, "decreased timer of %p to %lu",
   at_state, at_state->timer_expires);
  return 0;
 }

 gigaset_add_event(at_state->cs, at_state, EV_TIMEOUT, ((void*)0),
     at_state->timer_index, ((void*)0));
 return 1;
}
