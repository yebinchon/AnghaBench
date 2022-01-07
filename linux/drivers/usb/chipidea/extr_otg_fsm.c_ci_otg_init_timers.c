
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int function; } ;
struct ci_hdrc {TYPE_1__ otg_fsm_hrtimer; } ;


 int CLOCK_MONOTONIC ;
 int HRTIMER_MODE_ABS ;
 int ci_otg_hrtimer_func ;
 int hrtimer_init (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int ci_otg_init_timers(struct ci_hdrc *ci)
{
 hrtimer_init(&ci->otg_fsm_hrtimer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
 ci->otg_fsm_hrtimer.function = ci_otg_hrtimer_func;

 return 0;
}
