
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int irq_freq; int pie_timer; } ;
typedef int ktime_t ;


 int HRTIMER_MODE_REL ;
 int NSEC_PER_SEC ;
 int hrtimer_start (int *,int,int ) ;
 scalar_t__ hrtimer_try_to_cancel (int *) ;

__attribute__((used)) static int rtc_update_hrtimer(struct rtc_device *rtc, int enabled)
{
 if (hrtimer_try_to_cancel(&rtc->pie_timer) < 0)
  return -1;

 if (enabled) {
  ktime_t period = NSEC_PER_SEC / rtc->irq_freq;

  hrtimer_start(&rtc->pie_timer, period, HRTIMER_MODE_REL);
 }
 return 0;
}
