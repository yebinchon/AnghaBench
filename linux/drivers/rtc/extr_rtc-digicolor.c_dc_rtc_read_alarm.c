
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct rtc_wkalrm {int pending; void* enabled; int time; } ;
struct device {int dummy; } ;
struct dc_rtc {scalar_t__ regs; } ;


 scalar_t__ DC_RTC_ALARM ;
 scalar_t__ DC_RTC_INTENABLE ;
 scalar_t__ DC_RTC_REFERENCE ;
 int dc_rtc_read (struct dc_rtc*,unsigned long*) ;
 struct dc_rtc* dev_get_drvdata (struct device*) ;
 void* readl_relaxed (scalar_t__) ;
 int rtc_time64_to_tm (unsigned long,int *) ;

__attribute__((used)) static int dc_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alarm)
{
 struct dc_rtc *rtc = dev_get_drvdata(dev);
 u32 alarm_reg, reference;
 unsigned long now;
 int ret;

 alarm_reg = readl_relaxed(rtc->regs + DC_RTC_ALARM);
 reference = readl_relaxed(rtc->regs + DC_RTC_REFERENCE);
 rtc_time64_to_tm(reference + alarm_reg, &alarm->time);

 ret = dc_rtc_read(rtc, &now);
 if (ret < 0)
  return ret;

 alarm->pending = alarm_reg + reference > now;
 alarm->enabled = readl_relaxed(rtc->regs + DC_RTC_INTENABLE);

 return 0;
}
