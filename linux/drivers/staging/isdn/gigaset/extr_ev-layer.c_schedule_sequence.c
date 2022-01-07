
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardstate {int cur_at_seq; } ;
struct at_state_t {int dummy; } ;


 int RSP_INIT ;
 int gigaset_add_event (struct cardstate*,struct at_state_t*,int ,int *,int,int *) ;

__attribute__((used)) static void schedule_sequence(struct cardstate *cs,
         struct at_state_t *at_state, int sequence)
{
 cs->cur_at_seq = sequence;
 gigaset_add_event(cs, at_state, RSP_INIT, ((void*)0), sequence, ((void*)0));
}
