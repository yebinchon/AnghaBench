
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time64_t ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int MXC_RTC_TIME ;
 scalar_t__ get_alarm_or_time (struct device*,int ) ;
 scalar_t__ rtc_tm_to_time64 (struct rtc_time*) ;
 int set_alarm_or_time (struct device*,int ,scalar_t__) ;

__attribute__((used)) static int mxc_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 time64_t time = rtc_tm_to_time64(tm);


 do {
  set_alarm_or_time(dev, MXC_RTC_TIME, time);
 } while (time != get_alarm_or_time(dev, MXC_RTC_TIME));

 return 0;
}
