
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct ep93xx_rtc {scalar_t__ mmio_base; } ;
struct device {int dummy; } ;


 scalar_t__ EP93XX_RTC_LOAD ;
 struct ep93xx_rtc* dev_get_platdata (struct device*) ;
 unsigned long rtc_tm_to_time64 (struct rtc_time*) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int ep93xx_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct ep93xx_rtc *ep93xx_rtc = dev_get_platdata(dev);
 unsigned long secs = rtc_tm_to_time64(tm);

 writel(secs + 1, ep93xx_rtc->mmio_base + EP93XX_RTC_LOAD);
 return 0;
}
