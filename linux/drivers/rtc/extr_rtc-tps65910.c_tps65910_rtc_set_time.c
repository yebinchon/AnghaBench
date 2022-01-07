
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65910 {int regmap; } ;
struct rtc_time {scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct device {int parent; } ;


 int NUM_TIME_REGS ;
 int TPS65910_RTC_CTRL ;
 int TPS65910_RTC_CTRL_STOP_RTC ;
 int TPS65910_SECONDS ;
 unsigned char bin2bcd (scalar_t__) ;
 int dev_err (struct device*,char*,int) ;
 struct tps65910* dev_get_drvdata (int ) ;
 int regmap_bulk_write (int ,int ,unsigned char*,int) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int tps65910_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 unsigned char rtc_data[NUM_TIME_REGS];
 struct tps65910 *tps = dev_get_drvdata(dev->parent);
 int ret;

 rtc_data[0] = bin2bcd(tm->tm_sec);
 rtc_data[1] = bin2bcd(tm->tm_min);
 rtc_data[2] = bin2bcd(tm->tm_hour);
 rtc_data[3] = bin2bcd(tm->tm_mday);
 rtc_data[4] = bin2bcd(tm->tm_mon + 1);
 rtc_data[5] = bin2bcd(tm->tm_year - 100);


 ret = regmap_update_bits(tps->regmap, TPS65910_RTC_CTRL,
  TPS65910_RTC_CTRL_STOP_RTC, 0);
 if (ret < 0) {
  dev_err(dev, "RTC stop failed with err:%d\n", ret);
  return ret;
 }


 ret = regmap_bulk_write(tps->regmap, TPS65910_SECONDS, rtc_data,
  NUM_TIME_REGS);
 if (ret < 0) {
  dev_err(dev, "rtc_set_time error %d\n", ret);
  return ret;
 }


 ret = regmap_update_bits(tps->regmap, TPS65910_RTC_CTRL,
  TPS65910_RTC_CTRL_STOP_RTC, 1);
 if (ret < 0)
  dev_err(dev, "RTC start failed with err:%d\n", ret);

 return ret;
}
