
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int irq_freq; scalar_t__ pie_enabled; } ;


 int EINVAL ;
 int RTC_MAX_FREQ ;
 int cpu_relax () ;
 scalar_t__ rtc_update_hrtimer (struct rtc_device*,int) ;
 int trace_rtc_irq_set_freq (int,int) ;

int rtc_irq_set_freq(struct rtc_device *rtc, int freq)
{
 int err = 0;

 if (freq <= 0 || freq > RTC_MAX_FREQ)
  return -EINVAL;

 rtc->irq_freq = freq;
 while (rtc->pie_enabled && rtc_update_hrtimer(rtc, 1) < 0)
  cpu_relax();

 trace_rtc_irq_set_freq(freq, err);
 return err;
}
