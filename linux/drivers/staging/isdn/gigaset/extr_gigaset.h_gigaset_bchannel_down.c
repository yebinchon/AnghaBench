
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bc_state {int cs; int at_state; } ;


 int EV_BC_CLOSED ;
 int gigaset_add_event (int ,int *,int ,int *,int ,int *) ;
 int gigaset_schedule_event (int ) ;

__attribute__((used)) static inline void gigaset_bchannel_down(struct bc_state *bcs)
{
 gigaset_add_event(bcs->cs, &bcs->at_state, EV_BC_CLOSED, ((void*)0), 0, ((void*)0));
 gigaset_schedule_event(bcs->cs);
}
