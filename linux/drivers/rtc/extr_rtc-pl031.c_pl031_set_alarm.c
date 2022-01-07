
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_wkalrm {int enabled; int time; } ;
struct pl031_local {scalar_t__ base; } ;
struct device {int dummy; } ;


 scalar_t__ RTC_MR ;
 struct pl031_local* dev_get_drvdata (struct device*) ;
 int pl031_alarm_irq_enable (struct device*,int ) ;
 int rtc_tm_to_time (int *,unsigned long*) ;
 int rtc_valid_tm (int *) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int pl031_set_alarm(struct device *dev, struct rtc_wkalrm *alarm)
{
 struct pl031_local *ldata = dev_get_drvdata(dev);
 unsigned long time;
 int ret;


 ret = rtc_valid_tm(&alarm->time);
 if (ret == 0) {
  ret = rtc_tm_to_time(&alarm->time, &time);
  if (ret == 0) {
   writel(time, ldata->base + RTC_MR);
   pl031_alarm_irq_enable(dev, alarm->enabled);
  }
 }

 return ret;
}
