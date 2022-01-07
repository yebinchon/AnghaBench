
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time64_t ;
struct rtc_wkalrm {int enabled; int time; } ;
struct TYPE_2__ {int expires; } ;
struct rtc_test_data {int alarm_en; scalar_t__ offset; TYPE_1__ alarm; } ;
struct device {int dummy; } ;


 int HZ ;
 struct rtc_test_data* dev_get_drvdata (struct device*) ;
 int jiffies ;
 scalar_t__ ktime_get_real_seconds () ;
 int rtc_time64_to_tm (int,int *) ;

__attribute__((used)) static int test_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct rtc_test_data *rtd = dev_get_drvdata(dev);
 time64_t alarm;

 alarm = (rtd->alarm.expires - jiffies) / HZ;
 alarm += ktime_get_real_seconds() + rtd->offset;

 rtc_time64_to_tm(alarm, &alrm->time);
 alrm->enabled = rtd->alarm_en;

 return 0;
}
