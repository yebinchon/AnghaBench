
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct rtc_time {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ rtc_read_time (int ,struct rtc_time*) ;
 int rtc_tm_to_time64 (struct rtc_time*) ;
 scalar_t__ sprintf (char*,char*,int ) ;
 int to_rtc_device (struct device*) ;

__attribute__((used)) static ssize_t
since_epoch_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 ssize_t retval;
 struct rtc_time tm;

 retval = rtc_read_time(to_rtc_device(dev), &tm);
 if (retval == 0) {
  time64_t time;

  time = rtc_tm_to_time64(&tm);
  retval = sprintf(buf, "%lld\n", time);
 }

 return retval;
}
