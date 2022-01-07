
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_rtc {scalar_t__ base; int regmap; } ;


 int SPRD_RTC_ALM_INT_MASK ;
 scalar_t__ SPRD_RTC_INT_CLR ;
 int regmap_write (int ,scalar_t__,int ) ;

__attribute__((used)) static int sprd_rtc_clear_alarm_ints(struct sprd_rtc *rtc)
{
 return regmap_write(rtc->regmap, rtc->base + SPRD_RTC_INT_CLR,
       SPRD_RTC_ALM_INT_MASK);
}
