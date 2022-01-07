
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct sprd_rtc {scalar_t__ base; int regmap; } ;
struct rtc_wkalrm {scalar_t__ enabled; int time; } ;
struct device {int dummy; } ;


 int SPRD_RTC_AUXALM_EN ;
 int SPRD_RTC_AUX_ALARM ;
 scalar_t__ SPRD_RTC_INT_CLR ;
 scalar_t__ SPRD_RTC_INT_EN ;
 struct sprd_rtc* dev_get_drvdata (struct device*) ;
 int regmap_update_bits (int ,scalar_t__,int ,int ) ;
 int regmap_write (int ,scalar_t__,int ) ;
 int rtc_tm_to_time64 (int *) ;
 int sprd_rtc_set_secs (struct sprd_rtc*,int ,int ) ;

__attribute__((used)) static int sprd_rtc_set_aux_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct sprd_rtc *rtc = dev_get_drvdata(dev);
 time64_t secs = rtc_tm_to_time64(&alrm->time);
 int ret;


 ret = regmap_write(rtc->regmap, rtc->base + SPRD_RTC_INT_CLR,
      SPRD_RTC_AUXALM_EN);
 if (ret)
  return ret;

 ret = sprd_rtc_set_secs(rtc, SPRD_RTC_AUX_ALARM, secs);
 if (ret)
  return ret;

 if (alrm->enabled) {
  ret = regmap_update_bits(rtc->regmap,
      rtc->base + SPRD_RTC_INT_EN,
      SPRD_RTC_AUXALM_EN,
      SPRD_RTC_AUXALM_EN);
 } else {
  ret = regmap_update_bits(rtc->regmap,
      rtc->base + SPRD_RTC_INT_EN,
      SPRD_RTC_AUXALM_EN, 0);
 }

 return ret;
}
