
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct rtc_wkalrm {int enabled; struct rtc_time time; } ;
struct device {int dummy; } ;


 int ECMPHREG ;
 int ECMPLREG ;
 int ECMPMREG ;
 int alarm_enabled ;
 unsigned long rtc1_read (int ) ;
 int rtc_lock ;
 int rtc_time64_to_tm (unsigned long,struct rtc_time*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int vr41xx_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *wkalrm)
{
 unsigned long low, mid, high;
 struct rtc_time *time = &wkalrm->time;

 spin_lock_irq(&rtc_lock);

 low = rtc1_read(ECMPLREG);
 mid = rtc1_read(ECMPMREG);
 high = rtc1_read(ECMPHREG);
 wkalrm->enabled = alarm_enabled;

 spin_unlock_irq(&rtc_lock);

 rtc_time64_to_tm((high << 17) | (mid << 1) | (low >> 15), time);

 return 0;
}
