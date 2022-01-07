
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtc_time {int dummy; } ;
struct meson_rtc {int serial; } ;
struct device {int dummy; } ;


 int RTC_COUNTER ;
 struct meson_rtc* dev_get_drvdata (struct device*) ;
 int regmap_read (int ,int ,int *) ;
 int rtc_time64_to_tm (int ,struct rtc_time*) ;

__attribute__((used)) static int meson_rtc_gettime(struct device *dev, struct rtc_time *tm)
{
 struct meson_rtc *rtc = dev_get_drvdata(dev);
 u32 time;
 int ret;

 ret = regmap_read(rtc->serial, RTC_COUNTER, &time);
 if (!ret)
  rtc_time64_to_tm(time, tm);

 return ret;
}
