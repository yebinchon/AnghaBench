
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_rtc {int dummy; } ;


 int KICK0_VALUE ;
 int KICK1_VALUE ;
 int OMAP_RTC_KICK0_REG ;
 int OMAP_RTC_KICK1_REG ;
 int rtc_writel (struct omap_rtc*,int ,int ) ;

__attribute__((used)) static void am3352_rtc_unlock(struct omap_rtc *rtc)
{
 rtc_writel(rtc, OMAP_RTC_KICK0_REG, KICK0_VALUE);
 rtc_writel(rtc, OMAP_RTC_KICK1_REG, KICK1_VALUE);
}
