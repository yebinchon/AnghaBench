
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int time64_t ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int AB3100_RTC ;
 int AB3100_RTC_CLOCK_RATE ;
 int AB3100_TI0 ;
 int EINVAL ;
 int abx500_get_register_interruptible (struct device*,int ,int ,int*) ;
 int abx500_get_register_page_interruptible (struct device*,int ,int ,int*,int) ;
 int dev_info (struct device*,char*) ;
 int rtc_time64_to_tm (int,struct rtc_time*) ;

__attribute__((used)) static int ab3100_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 time64_t time;
 u8 rtcval;
 int err;

 err = abx500_get_register_interruptible(dev, 0,
      AB3100_RTC, &rtcval);
 if (err)
  return err;

 if (!(rtcval & 0x01)) {
  dev_info(dev, "clock not set (lost power)");
  return -EINVAL;
 } else {
  u64 hw_counter;
  u8 buf[6];


  err = abx500_get_register_page_interruptible(dev, 0,
            AB3100_TI0,
            buf, 6);
  if (err != 0)
   return err;

  hw_counter = ((u64) buf[5] << 40) | ((u64) buf[4] << 32) |
   ((u64) buf[3] << 24) | ((u64) buf[2] << 16) |
   ((u64) buf[1] << 8) | (u64) buf[0];
  time = hw_counter / (u64) (AB3100_RTC_CLOCK_RATE * 2);
 }

 rtc_time64_to_tm(time, tm);

 return 0;
}
