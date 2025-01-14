
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct ep93xx_rtc {scalar_t__ mmio_base; } ;
struct device {int dummy; } ;


 scalar_t__ EP93XX_RTC_DATA ;
 struct ep93xx_rtc* dev_get_platdata (struct device*) ;
 unsigned long readl (scalar_t__) ;
 int rtc_time64_to_tm (unsigned long,struct rtc_time*) ;

__attribute__((used)) static int ep93xx_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct ep93xx_rtc *ep93xx_rtc = dev_get_platdata(dev);
 unsigned long time;

 time = readl(ep93xx_rtc->mmio_base + EP93XX_RTC_DATA);

 rtc_time64_to_tm(time, tm);
 return 0;
}
