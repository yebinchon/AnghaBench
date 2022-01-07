
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt8500_rtc {scalar_t__ regbase; } ;
struct rtc_time {int tm_year; int tm_mon; int tm_mday; int tm_wday; int tm_hour; int tm_min; int tm_sec; } ;
struct device {int dummy; } ;


 int DATE_CENTURY_S ;
 int DATE_MONTH_S ;
 int DATE_YEAR_S ;
 int EINVAL ;
 int TIME_DOW_S ;
 int TIME_HOUR_S ;
 int TIME_MIN_S ;
 scalar_t__ VT8500_RTC_DS ;
 scalar_t__ VT8500_RTC_TS ;
 int bin2bcd (int) ;
 struct vt8500_rtc* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int vt8500_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct vt8500_rtc *vt8500_rtc = dev_get_drvdata(dev);

 if (tm->tm_year < 100) {
  dev_warn(dev, "Only years 2000-2199 are supported by the "
         "hardware!\n");
  return -EINVAL;
 }

 writel((bin2bcd(tm->tm_year % 100) << DATE_YEAR_S)
  | (bin2bcd(tm->tm_mon + 1) << DATE_MONTH_S)
  | (bin2bcd(tm->tm_mday))
  | ((tm->tm_year >= 200) << DATE_CENTURY_S),
  vt8500_rtc->regbase + VT8500_RTC_DS);
 writel((bin2bcd(tm->tm_wday) << TIME_DOW_S)
  | (bin2bcd(tm->tm_hour) << TIME_HOUR_S)
  | (bin2bcd(tm->tm_min) << TIME_MIN_S)
  | (bin2bcd(tm->tm_sec)),
  vt8500_rtc->regbase + VT8500_RTC_TS);

 return 0;
}
