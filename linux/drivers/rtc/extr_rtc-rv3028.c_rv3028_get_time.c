
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rv3028_data {int regmap; } ;
struct rtc_time {void* tm_year; void* tm_mon; void* tm_mday; int tm_wday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct device {int dummy; } ;
typedef int date ;


 int EINVAL ;
 size_t RV3028_DAY ;
 size_t RV3028_HOUR ;
 size_t RV3028_MIN ;
 size_t RV3028_MONTH ;
 size_t RV3028_SEC ;
 int RV3028_STATUS ;
 int RV3028_STATUS_PORF ;
 size_t RV3028_WDAY ;
 size_t RV3028_YEAR ;
 void* bcd2bin (int) ;
 struct rv3028_data* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*) ;
 int ilog2 (int) ;
 int regmap_bulk_read (int ,size_t,int*,int) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int rv3028_get_time(struct device *dev, struct rtc_time *tm)
{
 struct rv3028_data *rv3028 = dev_get_drvdata(dev);
 u8 date[7];
 int ret, status;

 ret = regmap_read(rv3028->regmap, RV3028_STATUS, &status);
 if (ret < 0)
  return ret;

 if (status & RV3028_STATUS_PORF) {
  dev_warn(dev, "Voltage low, data is invalid.\n");
  return -EINVAL;
 }

 ret = regmap_bulk_read(rv3028->regmap, RV3028_SEC, date, sizeof(date));
 if (ret)
  return ret;

 tm->tm_sec = bcd2bin(date[RV3028_SEC] & 0x7f);
 tm->tm_min = bcd2bin(date[RV3028_MIN] & 0x7f);
 tm->tm_hour = bcd2bin(date[RV3028_HOUR] & 0x3f);
 tm->tm_wday = ilog2(date[RV3028_WDAY] & 0x7f);
 tm->tm_mday = bcd2bin(date[RV3028_DAY] & 0x3f);
 tm->tm_mon = bcd2bin(date[RV3028_MONTH] & 0x1f) - 1;
 tm->tm_year = bcd2bin(date[RV3028_YEAR]) + 100;

 return 0;
}
