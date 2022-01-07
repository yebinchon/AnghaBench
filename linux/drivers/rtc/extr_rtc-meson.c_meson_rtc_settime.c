
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct meson_rtc {int serial; } ;
struct device {int dummy; } ;


 int RTC_COUNTER ;
 struct meson_rtc* dev_get_drvdata (struct device*) ;
 int regmap_write (int ,int ,int ) ;
 int rtc_tm_to_time64 (struct rtc_time*) ;

__attribute__((used)) static int meson_rtc_settime(struct device *dev, struct rtc_time *tm)
{
 struct meson_rtc *rtc = dev_get_drvdata(dev);

 return regmap_write(rtc->serial, RTC_COUNTER, rtc_tm_to_time64(tm));
}
