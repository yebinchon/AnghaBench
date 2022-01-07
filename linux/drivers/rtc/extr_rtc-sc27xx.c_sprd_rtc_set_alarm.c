
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int time64_t ;
struct sprd_rtc {scalar_t__ base; int regmap; TYPE_3__* rtc; } ;
struct rtc_wkalrm {scalar_t__ enabled; int time; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int expires; } ;
struct TYPE_5__ {int enabled; TYPE_1__ node; } ;
struct TYPE_6__ {TYPE_2__ aie_timer; } ;


 int SPRD_RTC_ALARM ;
 int SPRD_RTC_ALARM_EN ;
 scalar_t__ SPRD_RTC_INT_CLR ;
 scalar_t__ SPRD_RTC_INT_EN ;
 struct sprd_rtc* dev_get_drvdata (struct device*) ;
 int regmap_update_bits (int ,scalar_t__,int ,int ) ;
 int regmap_write (int ,scalar_t__,int ) ;
 struct rtc_time rtc_ktime_to_tm (int ) ;
 scalar_t__ rtc_tm_sub (struct rtc_time*,int *) ;
 int rtc_tm_to_time64 (int *) ;
 int sprd_rtc_lock_alarm (struct sprd_rtc*,int) ;
 int sprd_rtc_set_aux_alarm (struct device*,struct rtc_wkalrm*) ;
 int sprd_rtc_set_secs (struct sprd_rtc*,int ,int ) ;

__attribute__((used)) static int sprd_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct sprd_rtc *rtc = dev_get_drvdata(dev);
 time64_t secs = rtc_tm_to_time64(&alrm->time);
 struct rtc_time aie_time =
  rtc_ktime_to_tm(rtc->rtc->aie_timer.node.expires);
 int ret;
 if (!rtc->rtc->aie_timer.enabled || rtc_tm_sub(&aie_time, &alrm->time))
  return sprd_rtc_set_aux_alarm(dev, alrm);


 ret = regmap_write(rtc->regmap, rtc->base + SPRD_RTC_INT_CLR,
      SPRD_RTC_ALARM_EN);
 if (ret)
  return ret;

 ret = sprd_rtc_set_secs(rtc, SPRD_RTC_ALARM, secs);
 if (ret)
  return ret;

 if (alrm->enabled) {
  ret = regmap_update_bits(rtc->regmap,
      rtc->base + SPRD_RTC_INT_EN,
      SPRD_RTC_ALARM_EN,
      SPRD_RTC_ALARM_EN);
  if (ret)
   return ret;


  ret = sprd_rtc_lock_alarm(rtc, 0);
 } else {
  regmap_update_bits(rtc->regmap,
       rtc->base + SPRD_RTC_INT_EN,
       SPRD_RTC_ALARM_EN, 0);





  ret = sprd_rtc_lock_alarm(rtc, 1);
 }

 return ret;
}
