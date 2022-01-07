
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u8 ;
typedef unsigned long long time64_t ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
typedef int buff ;


 int RTC_COUNT4_DUMMYREAD ;
 int dev_err (struct device*,char*,int) ;
 int rtc_time64_to_tm (unsigned long long,struct rtc_time*) ;
 struct device* to_tps6586x_dev (struct device*) ;
 int tps6586x_reads (struct device*,int ,int,unsigned long long*) ;

__attribute__((used)) static int tps6586x_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct device *tps_dev = to_tps6586x_dev(dev);
 unsigned long long ticks = 0;
 time64_t seconds;
 u8 buff[6];
 int ret;
 int i;

 ret = tps6586x_reads(tps_dev, RTC_COUNT4_DUMMYREAD, sizeof(buff), buff);
 if (ret < 0) {
  dev_err(dev, "read counter failed with err %d\n", ret);
  return ret;
 }

 for (i = 1; i < sizeof(buff); i++) {
  ticks <<= 8;
  ticks |= buff[i];
 }

 seconds = ticks >> 10;
 rtc_time64_to_tm(seconds, tm);

 return 0;
}
