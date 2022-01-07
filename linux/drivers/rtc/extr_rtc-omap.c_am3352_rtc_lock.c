
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_rtc {int dummy; } ;


 int OMAP_RTC_KICK0_REG ;
 int OMAP_RTC_KICK1_REG ;
 int rtc_writel (struct omap_rtc*,int ,int ) ;

__attribute__((used)) static void am3352_rtc_lock(struct omap_rtc *rtc)
{
 rtc_writel(rtc, OMAP_RTC_KICK0_REG, 0);
 rtc_writel(rtc, OMAP_RTC_KICK1_REG, 0);
}
