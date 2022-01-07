
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct controller {int dummy; } ;


 struct controller* ctrl ;
 struct controller* from_timer (int ,struct timer_list*,int ) ;
 int poll_timer ;
 int shpc_isr (int ,struct controller*) ;
 int shpchp_poll_time ;
 int start_int_poll_timer (struct controller*,int) ;

__attribute__((used)) static void int_poll_timeout(struct timer_list *t)
{
 struct controller *ctrl = from_timer(ctrl, t, poll_timer);


 shpc_isr(0, ctrl);

 if (!shpchp_poll_time)
  shpchp_poll_time = 2;

 start_int_poll_timer(ctrl, shpchp_poll_time);
}
