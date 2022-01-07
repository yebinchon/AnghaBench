
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {void* tm_year; void* tm_mon; void* tm_mday; void* tm_wday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct rc5t583 {int regmap; } ;
struct device {int parent; } ;


 int NUM_TIME_REGS ;
 int RC5T583_RTC_SEC ;
 void* bcd2bin (int ) ;
 int dev_err (struct device*,char*,int) ;
 struct rc5t583* dev_get_drvdata (int ) ;
 int regmap_bulk_read (int ,int ,int *,int) ;

__attribute__((used)) static int rc5t583_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct rc5t583 *rc5t583 = dev_get_drvdata(dev->parent);
 u8 rtc_data[NUM_TIME_REGS];
 int ret;

 ret = regmap_bulk_read(rc5t583->regmap, RC5T583_RTC_SEC, rtc_data,
  NUM_TIME_REGS);
 if (ret < 0) {
  dev_err(dev, "RTC read time failed with err:%d\n", ret);
  return ret;
 }

 tm->tm_sec = bcd2bin(rtc_data[0]);
 tm->tm_min = bcd2bin(rtc_data[1]);
 tm->tm_hour = bcd2bin(rtc_data[2]);
 tm->tm_wday = bcd2bin(rtc_data[3]);
 tm->tm_mday = bcd2bin(rtc_data[4]);
 tm->tm_mon = bcd2bin(rtc_data[5]) - 1;
 tm->tm_year = bcd2bin(rtc_data[6]) + 100;

 return ret;
}
