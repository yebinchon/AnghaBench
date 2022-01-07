
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int pie_enabled; } ;


 int cpu_relax () ;
 scalar_t__ rtc_update_hrtimer (struct rtc_device*,int) ;
 int trace_rtc_irq_set_state (int,int) ;

int rtc_irq_set_state(struct rtc_device *rtc, int enabled)
{
 int err = 0;

 while (rtc_update_hrtimer(rtc, enabled) < 0)
  cpu_relax();

 rtc->pie_enabled = enabled;

 trace_rtc_irq_set_state(enabled, err);
 return err;
}
