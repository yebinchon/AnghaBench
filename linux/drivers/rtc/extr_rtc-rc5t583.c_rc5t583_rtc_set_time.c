
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_wday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct rc5t583 {int regmap; } ;
struct device {int parent; } ;


 int NUM_TIME_REGS ;
 int RC5T583_RTC_SEC ;
 unsigned char bin2bcd (scalar_t__) ;
 int dev_err (struct device*,char*,int) ;
 struct rc5t583* dev_get_drvdata (int ) ;
 int regmap_bulk_write (int ,int ,unsigned char*,int) ;

__attribute__((used)) static int rc5t583_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct rc5t583 *rc5t583 = dev_get_drvdata(dev->parent);
 unsigned char rtc_data[NUM_TIME_REGS];
 int ret;

 rtc_data[0] = bin2bcd(tm->tm_sec);
 rtc_data[1] = bin2bcd(tm->tm_min);
 rtc_data[2] = bin2bcd(tm->tm_hour);
 rtc_data[3] = bin2bcd(tm->tm_wday);
 rtc_data[4] = bin2bcd(tm->tm_mday);
 rtc_data[5] = bin2bcd(tm->tm_mon + 1);
 rtc_data[6] = bin2bcd(tm->tm_year - 100);

 ret = regmap_bulk_write(rc5t583->regmap, RC5T583_RTC_SEC, rtc_data,
  NUM_TIME_REGS);
 if (ret < 0) {
  dev_err(dev, "RTC set time failed with error %d\n", ret);
  return ret;
 }

 return ret;
}
