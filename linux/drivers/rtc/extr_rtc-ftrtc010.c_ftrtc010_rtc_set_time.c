
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int timeu64_t ;
struct rtc_time {int dummy; } ;
struct ftrtc010_rtc {scalar_t__ rtc_base; } ;
struct device {int dummy; } ;


 scalar_t__ FTRTC010_RTC_CR ;
 scalar_t__ FTRTC010_RTC_DAYS ;
 scalar_t__ FTRTC010_RTC_HOUR ;
 scalar_t__ FTRTC010_RTC_MINUTE ;
 scalar_t__ FTRTC010_RTC_RECORD ;
 scalar_t__ FTRTC010_RTC_SECOND ;
 struct ftrtc010_rtc* dev_get_drvdata (struct device*) ;
 int readl (scalar_t__) ;
 int rtc_tm_to_time64 (struct rtc_time*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int ftrtc010_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct ftrtc010_rtc *rtc = dev_get_drvdata(dev);
 u32 sec, min, hour, day, offset;
 timeu64_t time;

 time = rtc_tm_to_time64(tm);

 sec = readl(rtc->rtc_base + FTRTC010_RTC_SECOND);
 min = readl(rtc->rtc_base + FTRTC010_RTC_MINUTE);
 hour = readl(rtc->rtc_base + FTRTC010_RTC_HOUR);
 day = readl(rtc->rtc_base + FTRTC010_RTC_DAYS);

 offset = time - (day * 86400 + hour * 3600 + min * 60 + sec);

 writel(offset, rtc->rtc_base + FTRTC010_RTC_RECORD);
 writel(0x01, rtc->rtc_base + FTRTC010_RTC_CR);

 return 0;
}
