
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int time64_t ;
struct rtc_wkalrm {int enabled; int time; scalar_t__ pending; } ;
struct device {int dummy; } ;


 int AB3100_AL0 ;
 int AB3100_RTC ;
 int AB3100_RTC_CLOCK_RATE ;
 int abx500_get_register_interruptible (struct device*,int ,int ,int*) ;
 int abx500_get_register_page_interruptible (struct device*,int ,int ,int*,int) ;
 int rtc_time64_to_tm (int,int *) ;
 int rtc_valid_tm (int *) ;

__attribute__((used)) static int ab3100_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alarm)
{
 time64_t time;
 u64 hw_counter;
 u8 buf[6];
 u8 rtcval;
 int err;


 err = abx500_get_register_interruptible(dev, 0,
      AB3100_RTC, &rtcval);
 if (err)
  return err;
 if (rtcval & 0x04)
  alarm->enabled = 1;
 else
  alarm->enabled = 0;

 alarm->pending = 0;

 err = abx500_get_register_page_interruptible(dev, 0,
           AB3100_AL0, buf, 4);
 if (err)
  return err;
 hw_counter = ((u64) buf[3] << 40) | ((u64) buf[2] << 32) |
  ((u64) buf[1] << 24) | ((u64) buf[0] << 16);
 time = hw_counter / (u64) (AB3100_RTC_CLOCK_RATE * 2);

 rtc_time64_to_tm(time, &alarm->time);

 return rtc_valid_tm(&alarm->time);
}
