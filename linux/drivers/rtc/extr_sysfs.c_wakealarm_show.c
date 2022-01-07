
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct rtc_wkalrm {int time; scalar_t__ enabled; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ rtc_read_alarm (int ,struct rtc_wkalrm*) ;
 int rtc_tm_to_time64 (int *) ;
 scalar_t__ sprintf (char*,char*,int ) ;
 int to_rtc_device (struct device*) ;

__attribute__((used)) static ssize_t
wakealarm_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 ssize_t retval;
 time64_t alarm;
 struct rtc_wkalrm alm;
 retval = rtc_read_alarm(to_rtc_device(dev), &alm);
 if (retval == 0 && alm.enabled) {
  alarm = rtc_tm_to_time64(&alm.time);
  retval = sprintf(buf, "%lld\n", alarm);
 }

 return retval;
}
