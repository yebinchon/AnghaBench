
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sunxi_rtc_dev {scalar_t__ base; TYPE_1__* data_year; } ;
struct rtc_time {int tm_year; int tm_mon; int tm_hour; int tm_min; int tm_sec; int tm_mday; } ;
struct device {int dummy; } ;
struct TYPE_2__ {unsigned int min; unsigned int max; int leap_shift; int mask; } ;


 int EINVAL ;
 int SUNXI_DATE_SET_DAY_VALUE (int ) ;
 int SUNXI_DATE_SET_MON_VALUE (int) ;
 int SUNXI_DATE_SET_YEAR_VALUE (int,int ) ;
 int SUNXI_LEAP_SET_VALUE (int,int ) ;
 int SUNXI_LOSC_CTRL ;
 int SUNXI_LOSC_CTRL_RTC_HMS_ACC ;
 int SUNXI_LOSC_CTRL_RTC_YMD_ACC ;
 scalar_t__ SUNXI_RTC_HMS ;
 scalar_t__ SUNXI_RTC_YMD ;
 int SUNXI_TIME_SET_HOUR_VALUE (int ) ;
 int SUNXI_TIME_SET_MIN_VALUE (int ) ;
 int SUNXI_TIME_SET_SEC_VALUE (int ) ;
 scalar_t__ SUNXI_YEAR_OFF (TYPE_1__*) ;
 int dev_err (struct device*,char*,...) ;
 struct sunxi_rtc_dev* dev_get_drvdata (struct device*) ;
 scalar_t__ is_leap_year (unsigned int) ;
 scalar_t__ sunxi_rtc_wait (struct sunxi_rtc_dev*,int ,int ,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int sunxi_rtc_settime(struct device *dev, struct rtc_time *rtc_tm)
{
 struct sunxi_rtc_dev *chip = dev_get_drvdata(dev);
 u32 date = 0;
 u32 time = 0;
 unsigned int year;







 year = rtc_tm->tm_year + 1900;
 if (year < chip->data_year->min || year > chip->data_year->max) {
  dev_err(dev, "rtc only supports year in range %u - %u\n",
   chip->data_year->min, chip->data_year->max);
  return -EINVAL;
 }

 rtc_tm->tm_year -= SUNXI_YEAR_OFF(chip->data_year);
 rtc_tm->tm_mon += 1;

 date = SUNXI_DATE_SET_DAY_VALUE(rtc_tm->tm_mday) |
  SUNXI_DATE_SET_MON_VALUE(rtc_tm->tm_mon) |
  SUNXI_DATE_SET_YEAR_VALUE(rtc_tm->tm_year,
    chip->data_year->mask);

 if (is_leap_year(year))
  date |= SUNXI_LEAP_SET_VALUE(1, chip->data_year->leap_shift);

 time = SUNXI_TIME_SET_SEC_VALUE(rtc_tm->tm_sec) |
  SUNXI_TIME_SET_MIN_VALUE(rtc_tm->tm_min) |
  SUNXI_TIME_SET_HOUR_VALUE(rtc_tm->tm_hour);

 writel(0, chip->base + SUNXI_RTC_HMS);
 writel(0, chip->base + SUNXI_RTC_YMD);

 writel(time, chip->base + SUNXI_RTC_HMS);







 if (sunxi_rtc_wait(chip, SUNXI_LOSC_CTRL,
    SUNXI_LOSC_CTRL_RTC_HMS_ACC, 50)) {
  dev_err(dev, "Failed to set rtc time.\n");
  return -1;
 }

 writel(date, chip->base + SUNXI_RTC_YMD);







 if (sunxi_rtc_wait(chip, SUNXI_LOSC_CTRL,
    SUNXI_LOSC_CTRL_RTC_YMD_ACC, 50)) {
  dev_err(dev, "Failed to set rtc time.\n");
  return -1;
 }

 return 0;
}
