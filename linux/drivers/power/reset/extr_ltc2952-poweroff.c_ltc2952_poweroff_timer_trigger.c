
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc2952_poweroff {int dev; } ;
struct hrtimer {int dummy; } ;
typedef enum hrtimer_restart { ____Placeholder_hrtimer_restart } hrtimer_restart ;


 int HRTIMER_NORESTART ;
 int dev_info (int ,char*) ;
 int ltc2952_poweroff_start_wde (struct ltc2952_poweroff*) ;
 int orderly_poweroff (int) ;
 int timer_trigger ;
 struct ltc2952_poweroff* to_ltc2952 (struct hrtimer*,int ) ;

__attribute__((used)) static enum hrtimer_restart
ltc2952_poweroff_timer_trigger(struct hrtimer *timer)
{
 struct ltc2952_poweroff *data = to_ltc2952(timer, timer_trigger);

 ltc2952_poweroff_start_wde(data);
 dev_info(data->dev, "executing shutdown\n");
 orderly_poweroff(1);

 return HRTIMER_NORESTART;
}
