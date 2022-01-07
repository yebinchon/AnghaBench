
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardstate {int dummy; } ;
struct bc_state {int at_state; struct cardstate* cs; } ;


 int EV_HUP ;
 int gigaset_add_event (struct cardstate*,int *,int ,int *,int ,int *) ;
 int gigaset_schedule_event (struct cardstate*) ;

__attribute__((used)) static inline void error_hangup(struct bc_state *bcs)
{
 struct cardstate *cs = bcs->cs;

 gigaset_add_event(cs, &bcs->at_state, EV_HUP, ((void*)0), 0, ((void*)0));
 gigaset_schedule_event(cs);
}
