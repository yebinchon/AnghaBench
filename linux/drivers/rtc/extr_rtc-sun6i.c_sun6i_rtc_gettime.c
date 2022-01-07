
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sun6i_rtc_dev {scalar_t__ base; } ;
struct rtc_time {int tm_mon; int tm_year; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct device {int dummy; } ;


 int SUN6I_DATE_GET_DAY_VALUE (scalar_t__) ;
 int SUN6I_DATE_GET_MON_VALUE (scalar_t__) ;
 int SUN6I_DATE_GET_YEAR_VALUE (scalar_t__) ;
 scalar_t__ SUN6I_RTC_HMS ;
 scalar_t__ SUN6I_RTC_YMD ;
 int SUN6I_TIME_GET_HOUR_VALUE (scalar_t__) ;
 int SUN6I_TIME_GET_MIN_VALUE (scalar_t__) ;
 int SUN6I_TIME_GET_SEC_VALUE (scalar_t__) ;
 scalar_t__ SUN6I_YEAR_OFF ;
 struct sun6i_rtc_dev* dev_get_drvdata (struct device*) ;
 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static int sun6i_rtc_gettime(struct device *dev, struct rtc_time *rtc_tm)
{
 struct sun6i_rtc_dev *chip = dev_get_drvdata(dev);
 u32 date, time;




 do {
  date = readl(chip->base + SUN6I_RTC_YMD);
  time = readl(chip->base + SUN6I_RTC_HMS);
 } while ((date != readl(chip->base + SUN6I_RTC_YMD)) ||
   (time != readl(chip->base + SUN6I_RTC_HMS)));

 rtc_tm->tm_sec = SUN6I_TIME_GET_SEC_VALUE(time);
 rtc_tm->tm_min = SUN6I_TIME_GET_MIN_VALUE(time);
 rtc_tm->tm_hour = SUN6I_TIME_GET_HOUR_VALUE(time);

 rtc_tm->tm_mday = SUN6I_DATE_GET_DAY_VALUE(date);
 rtc_tm->tm_mon = SUN6I_DATE_GET_MON_VALUE(date);
 rtc_tm->tm_year = SUN6I_DATE_GET_YEAR_VALUE(date);

 rtc_tm->tm_mon -= 1;





 rtc_tm->tm_year += SUN6I_YEAR_OFF;

 return 0;
}
