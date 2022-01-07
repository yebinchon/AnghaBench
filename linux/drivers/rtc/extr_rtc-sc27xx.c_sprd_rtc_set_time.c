
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct sprd_rtc {int valid; scalar_t__ base; int regmap; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int SPRD_RTC_POWER_STS_CLEAR ;
 int SPRD_RTC_POWER_STS_VALID ;
 scalar_t__ SPRD_RTC_PWR_CTRL ;
 int SPRD_RTC_TIME ;
 struct sprd_rtc* dev_get_drvdata (struct device*) ;
 int regmap_write (int ,scalar_t__,int ) ;
 int rtc_tm_to_time64 (struct rtc_time*) ;
 int sprd_rtc_set_secs (struct sprd_rtc*,int ,int ) ;

__attribute__((used)) static int sprd_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct sprd_rtc *rtc = dev_get_drvdata(dev);
 time64_t secs = rtc_tm_to_time64(tm);
 int ret;

 ret = sprd_rtc_set_secs(rtc, SPRD_RTC_TIME, secs);
 if (ret)
  return ret;

 if (!rtc->valid) {

  ret = regmap_write(rtc->regmap, rtc->base + SPRD_RTC_PWR_CTRL,
       SPRD_RTC_POWER_STS_CLEAR);
  if (ret)
   return ret;





  ret = regmap_write(rtc->regmap, rtc->base + SPRD_RTC_PWR_CTRL,
       SPRD_RTC_POWER_STS_VALID);
  if (ret)
   return ret;

  rtc->valid = 1;
 }

 return 0;
}
