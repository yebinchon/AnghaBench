
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_year; int tm_wday; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int RTC_HOUR_SHIFT ;
 int RTC_MDAY_SHIFT ;
 int RTC_MIN_SHIFT ;
 int RTC_MON_SHIFT ;
 int RTC_SEC_SHIFT ;
 int RTC_WDAY_SHIFT ;
 int bin2bcd (int) ;
 int dev_err (struct device*,char*,int) ;
 int rtc_time_to_tm (unsigned long,struct rtc_time*) ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;

__attribute__((used)) static int pl031_stv2_tm_to_time(struct device *dev,
     struct rtc_time *tm, unsigned long *st_time,
 unsigned long *bcd_year)
{
 int year = tm->tm_year + 1900;
 int wday = tm->tm_wday;


 if (wday < -1 || wday > 6) {
  dev_err(dev, "invalid wday value %d\n", tm->tm_wday);
  return -EINVAL;
 } else if (wday == -1) {

  unsigned long time;
  struct rtc_time calc_tm;

  rtc_tm_to_time(tm, &time);
  rtc_time_to_tm(time, &calc_tm);
  wday = calc_tm.tm_wday;
 }

 *bcd_year = (bin2bcd(year % 100) | bin2bcd(year / 100) << 8);

 *st_time = ((tm->tm_mon + 1) << RTC_MON_SHIFT)
   | (tm->tm_mday << RTC_MDAY_SHIFT)
   | ((wday + 1) << RTC_WDAY_SHIFT)
   | (tm->tm_hour << RTC_HOUR_SHIFT)
   | (tm->tm_min << RTC_MIN_SHIFT)
   | (tm->tm_sec << RTC_SEC_SHIFT);

 return 0;
}
