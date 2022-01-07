
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int time64_t ;
struct rtc_wkalrm {scalar_t__ enabled; int time; } ;
struct device {int dummy; } ;


 int ECMPHREG ;
 int ECMPLREG ;
 int ECMPMREG ;
 int aie_irq ;
 scalar_t__ alarm_enabled ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int rtc1_write (int ,int ) ;
 int rtc_lock ;
 int rtc_tm_to_time64 (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int vr41xx_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *wkalrm)
{
 time64_t alarm_sec;

 alarm_sec = rtc_tm_to_time64(&wkalrm->time);

 spin_lock_irq(&rtc_lock);

 if (alarm_enabled)
  disable_irq(aie_irq);

 rtc1_write(ECMPLREG, (uint16_t)(alarm_sec << 15));
 rtc1_write(ECMPMREG, (uint16_t)(alarm_sec >> 1));
 rtc1_write(ECMPHREG, (uint16_t)(alarm_sec >> 17));

 if (wkalrm->enabled)
  enable_irq(aie_irq);

 alarm_enabled = wkalrm->enabled;

 spin_unlock_irq(&rtc_lock);

 return 0;
}
