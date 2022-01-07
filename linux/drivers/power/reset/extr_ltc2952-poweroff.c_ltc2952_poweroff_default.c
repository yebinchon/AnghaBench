
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int function; } ;
struct ltc2952_poweroff {long wde_interval; TYPE_1__ timer_wde; TYPE_1__ timer_trigger; int trigger_delay; } ;


 int CLOCK_MONOTONIC ;
 int HRTIMER_MODE_REL ;
 int hrtimer_init (TYPE_1__*,int ,int ) ;
 int ktime_set (int,long) ;
 int ltc2952_poweroff_timer_trigger ;
 int ltc2952_poweroff_timer_wde ;

__attribute__((used)) static void ltc2952_poweroff_default(struct ltc2952_poweroff *data)
{
 data->wde_interval = 300L * 1E6L;
 data->trigger_delay = ktime_set(2, 500L*1E6L);

 hrtimer_init(&data->timer_trigger, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 data->timer_trigger.function = ltc2952_poweroff_timer_trigger;

 hrtimer_init(&data->timer_wde, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 data->timer_wde.function = ltc2952_poweroff_timer_wde;
}
