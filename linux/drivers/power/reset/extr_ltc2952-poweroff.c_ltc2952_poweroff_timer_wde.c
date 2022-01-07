
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc2952_poweroff {int wde_interval; int gpio_watchdog; scalar_t__ kernel_panic; } ;
struct hrtimer {int dummy; } ;
typedef int ktime_t ;
typedef enum hrtimer_restart { ____Placeholder_hrtimer_restart } hrtimer_restart ;


 int HRTIMER_NORESTART ;
 int HRTIMER_RESTART ;
 int gpiod_get_value (int ) ;
 int gpiod_set_value (int ,int) ;
 int hrtimer_cb_get_time (struct hrtimer*) ;
 unsigned long hrtimer_forward (struct hrtimer*,int ,int ) ;
 int timer_wde ;
 struct ltc2952_poweroff* to_ltc2952 (struct hrtimer*,int ) ;

__attribute__((used)) static enum hrtimer_restart ltc2952_poweroff_timer_wde(struct hrtimer *timer)
{
 ktime_t now;
 int state;
 unsigned long overruns;
 struct ltc2952_poweroff *data = to_ltc2952(timer, timer_wde);

 if (data->kernel_panic)
  return HRTIMER_NORESTART;

 state = gpiod_get_value(data->gpio_watchdog);
 gpiod_set_value(data->gpio_watchdog, !state);

 now = hrtimer_cb_get_time(timer);
 overruns = hrtimer_forward(timer, now, data->wde_interval);

 return HRTIMER_RESTART;
}
