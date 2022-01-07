
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sprd_rtc {int valid; scalar_t__ base; int regmap; } ;


 scalar_t__ SPRD_RTC_POWER_RESET_VALUE ;
 scalar_t__ SPRD_RTC_PWR_STS ;
 int regmap_read (int ,scalar_t__,scalar_t__*) ;

__attribute__((used)) static int sprd_rtc_check_power_down(struct sprd_rtc *rtc)
{
 u32 val;
 int ret;

 ret = regmap_read(rtc->regmap, rtc->base + SPRD_RTC_PWR_STS, &val);
 if (ret)
  return ret;






 rtc->valid = val == SPRD_RTC_POWER_RESET_VALUE ? 0 : 1;
 return 0;
}
