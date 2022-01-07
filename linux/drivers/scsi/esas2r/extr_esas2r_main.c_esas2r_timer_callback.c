
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct esas2r_adapter {int flags2; } ;


 int AF2_TIMER_TICK ;
 struct esas2r_adapter* a ;
 int esas2r_kickoff_timer (struct esas2r_adapter*) ;
 int esas2r_schedule_tasklet (struct esas2r_adapter*) ;
 struct esas2r_adapter* from_timer (int ,struct timer_list*,int ) ;
 int set_bit (int ,int *) ;
 int timer ;

__attribute__((used)) static void esas2r_timer_callback(struct timer_list *t)
{
 struct esas2r_adapter *a = from_timer(a, t, timer);

 set_bit(AF2_TIMER_TICK, &a->flags2);

 esas2r_schedule_tasklet(a);

 esas2r_kickoff_timer(a);
}
