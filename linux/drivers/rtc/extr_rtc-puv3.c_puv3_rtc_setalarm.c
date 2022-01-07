
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct rtc_wkalrm {scalar_t__ enabled; struct rtc_time time; } ;
struct device {int dummy; } ;


 int RTC_RTAR ;
 int dev_dbg (struct device*,char*,scalar_t__,struct rtc_time*) ;
 int disable_irq_wake (int ) ;
 int enable_irq_wake (int ) ;
 int puv3_rtc_alarmno ;
 int puv3_rtc_setaie (struct device*,scalar_t__) ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;
 int writel (unsigned long,int ) ;

__attribute__((used)) static int puv3_rtc_setalarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct rtc_time *tm = &alrm->time;
 unsigned long rtcalarm_count = 0;

 dev_dbg(dev, "set alarm: %d, %ptRr\n", alrm->enabled, tm);

 rtc_tm_to_time(tm, &rtcalarm_count);
 writel(rtcalarm_count, RTC_RTAR);

 puv3_rtc_setaie(dev, alrm->enabled);

 if (alrm->enabled)
  enable_irq_wake(puv3_rtc_alarmno);
 else
  disable_irq_wake(puv3_rtc_alarmno);

 return 0;
}
