
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u8 ;
typedef scalar_t__ time64_t ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
typedef int buff ;


 int RTC_COUNT4 ;
 int RTC_CTRL ;
 int RTC_ENABLE ;
 int dev_err (struct device*,char*) ;
 scalar_t__ rtc_tm_to_time64 (struct rtc_time*) ;
 struct device* to_tps6586x_dev (struct device*) ;
 int tps6586x_clr_bits (struct device*,int ,int ) ;
 int tps6586x_set_bits (struct device*,int ,int ) ;
 int tps6586x_writes (struct device*,int ,int,unsigned long long*) ;

__attribute__((used)) static int tps6586x_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct device *tps_dev = to_tps6586x_dev(dev);
 unsigned long long ticks;
 time64_t seconds;
 u8 buff[5];
 int ret;

 seconds = rtc_tm_to_time64(tm);

 ticks = (unsigned long long)seconds << 10;
 buff[0] = (ticks >> 32) & 0xff;
 buff[1] = (ticks >> 24) & 0xff;
 buff[2] = (ticks >> 16) & 0xff;
 buff[3] = (ticks >> 8) & 0xff;
 buff[4] = ticks & 0xff;


 ret = tps6586x_clr_bits(tps_dev, RTC_CTRL, RTC_ENABLE);
 if (ret < 0) {
  dev_err(dev, "failed to clear RTC_ENABLE\n");
  return ret;
 }

 ret = tps6586x_writes(tps_dev, RTC_COUNT4, sizeof(buff), buff);
 if (ret < 0) {
  dev_err(dev, "failed to program new time\n");
  return ret;
 }


 ret = tps6586x_set_bits(tps_dev, RTC_CTRL, RTC_ENABLE);
 if (ret < 0) {
  dev_err(dev, "failed to set RTC_ENABLE\n");
  return ret;
 }
 return 0;
}
