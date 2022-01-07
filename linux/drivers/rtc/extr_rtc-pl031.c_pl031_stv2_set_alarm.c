
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_wkalrm {int enabled; int time; } ;
struct pl031_local {scalar_t__ base; } ;
struct device {int dummy; } ;


 scalar_t__ RTC_MR ;
 scalar_t__ RTC_YMR ;
 struct pl031_local* dev_get_drvdata (struct device*) ;
 int pl031_alarm_irq_enable (struct device*,int ) ;
 int pl031_stv2_tm_to_time (struct device*,int *,unsigned long*,unsigned long*) ;
 int rtc_valid_tm (int *) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int pl031_stv2_set_alarm(struct device *dev, struct rtc_wkalrm *alarm)
{
 struct pl031_local *ldata = dev_get_drvdata(dev);
 unsigned long time;
 unsigned long bcd_year;
 int ret;


 ret = rtc_valid_tm(&alarm->time);
 if (ret == 0) {
  ret = pl031_stv2_tm_to_time(dev, &alarm->time,
         &time, &bcd_year);
  if (ret == 0) {
   writel(bcd_year, ldata->base + RTC_YMR);
   writel(time, ldata->base + RTC_MR);

   pl031_alarm_irq_enable(dev, alarm->enabled);
  }
 }

 return ret;
}
