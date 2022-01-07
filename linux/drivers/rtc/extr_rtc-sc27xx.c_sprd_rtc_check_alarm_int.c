
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_rtc {scalar_t__ base; int regmap; } ;


 int SPRD_RTC_ALARM_EN ;
 scalar_t__ SPRD_RTC_INT_EN ;
 int SPRD_RTC_POWEROFF_ALM_FLAG ;
 scalar_t__ SPRD_RTC_SPG_VALUE ;
 int regmap_read (int ,scalar_t__,int*) ;
 int regmap_update_bits (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static int sprd_rtc_check_alarm_int(struct sprd_rtc *rtc)
{
 u32 val;
 int ret;

 ret = regmap_read(rtc->regmap, rtc->base + SPRD_RTC_SPG_VALUE, &val);
 if (ret)
  return ret;
 if (!(val & SPRD_RTC_POWEROFF_ALM_FLAG))
  return 0;

 return regmap_update_bits(rtc->regmap, rtc->base + SPRD_RTC_INT_EN,
      SPRD_RTC_ALARM_EN, SPRD_RTC_ALARM_EN);
}
