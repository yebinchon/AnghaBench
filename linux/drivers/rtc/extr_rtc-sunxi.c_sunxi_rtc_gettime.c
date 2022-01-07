
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sunxi_rtc_dev {TYPE_1__* data_year; scalar_t__ base; } ;
struct rtc_time {int tm_mon; int tm_year; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int mask; } ;


 int SUNXI_DATE_GET_DAY_VALUE (scalar_t__) ;
 int SUNXI_DATE_GET_MON_VALUE (scalar_t__) ;
 int SUNXI_DATE_GET_YEAR_VALUE (scalar_t__,int ) ;
 scalar_t__ SUNXI_RTC_HMS ;
 scalar_t__ SUNXI_RTC_YMD ;
 int SUNXI_TIME_GET_HOUR_VALUE (scalar_t__) ;
 int SUNXI_TIME_GET_MIN_VALUE (scalar_t__) ;
 int SUNXI_TIME_GET_SEC_VALUE (scalar_t__) ;
 scalar_t__ SUNXI_YEAR_OFF (TYPE_1__*) ;
 struct sunxi_rtc_dev* dev_get_drvdata (struct device*) ;
 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static int sunxi_rtc_gettime(struct device *dev, struct rtc_time *rtc_tm)
{
 struct sunxi_rtc_dev *chip = dev_get_drvdata(dev);
 u32 date, time;




 do {
  date = readl(chip->base + SUNXI_RTC_YMD);
  time = readl(chip->base + SUNXI_RTC_HMS);
 } while ((date != readl(chip->base + SUNXI_RTC_YMD)) ||
   (time != readl(chip->base + SUNXI_RTC_HMS)));

 rtc_tm->tm_sec = SUNXI_TIME_GET_SEC_VALUE(time);
 rtc_tm->tm_min = SUNXI_TIME_GET_MIN_VALUE(time);
 rtc_tm->tm_hour = SUNXI_TIME_GET_HOUR_VALUE(time);

 rtc_tm->tm_mday = SUNXI_DATE_GET_DAY_VALUE(date);
 rtc_tm->tm_mon = SUNXI_DATE_GET_MON_VALUE(date);
 rtc_tm->tm_year = SUNXI_DATE_GET_YEAR_VALUE(date,
     chip->data_year->mask);

 rtc_tm->tm_mon -= 1;





 rtc_tm->tm_year += SUNXI_YEAR_OFF(chip->data_year);

 return 0;
}
