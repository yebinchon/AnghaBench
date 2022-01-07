
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time64_t ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int MXC_RTC_TIME ;
 scalar_t__ get_alarm_or_time (struct device*,int ) ;
 int rtc_time64_to_tm (scalar_t__,struct rtc_time*) ;

__attribute__((used)) static int mxc_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 time64_t val;


 do {
  val = get_alarm_or_time(dev, MXC_RTC_TIME);
 } while (val != get_alarm_or_time(dev, MXC_RTC_TIME));

 rtc_time64_to_tm(val, tm);

 return 0;
}
