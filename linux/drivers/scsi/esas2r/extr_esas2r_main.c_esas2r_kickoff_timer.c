
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;
struct esas2r_adapter {TYPE_1__ timer; } ;


 int add_timer (TYPE_1__*) ;
 int esas2r_timer_callback ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int) ;
 int timer_setup (TYPE_1__*,int ,int ) ;

void esas2r_kickoff_timer(struct esas2r_adapter *a)
{
 timer_setup(&a->timer, esas2r_timer_callback, 0);

 a->timer.expires = jiffies +
      msecs_to_jiffies(100);

 add_timer(&a->timer);
}
