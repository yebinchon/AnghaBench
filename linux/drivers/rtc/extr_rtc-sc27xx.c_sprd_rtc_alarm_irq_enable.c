
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_rtc {scalar_t__ base; int regmap; } ;
struct device {int dummy; } ;


 int SPRD_RTC_ALARM_EN ;
 int SPRD_RTC_AUXALM_EN ;
 scalar_t__ SPRD_RTC_INT_EN ;
 struct sprd_rtc* dev_get_drvdata (struct device*) ;
 int regmap_update_bits (int ,scalar_t__,int,int) ;
 int sprd_rtc_lock_alarm (struct sprd_rtc*,int) ;

__attribute__((used)) static int sprd_rtc_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct sprd_rtc *rtc = dev_get_drvdata(dev);
 int ret;

 if (enabled) {
  ret = regmap_update_bits(rtc->regmap,
      rtc->base + SPRD_RTC_INT_EN,
      SPRD_RTC_ALARM_EN | SPRD_RTC_AUXALM_EN,
      SPRD_RTC_ALARM_EN | SPRD_RTC_AUXALM_EN);
  if (ret)
   return ret;

  ret = sprd_rtc_lock_alarm(rtc, 0);
 } else {
  regmap_update_bits(rtc->regmap, rtc->base + SPRD_RTC_INT_EN,
       SPRD_RTC_ALARM_EN | SPRD_RTC_AUXALM_EN, 0);

  ret = sprd_rtc_lock_alarm(rtc, 1);
 }

 return ret;
}
