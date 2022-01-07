
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct rtc_test_data {scalar_t__ offset; } ;
struct device {int dummy; } ;


 struct rtc_test_data* dev_get_drvdata (struct device*) ;
 scalar_t__ ktime_get_real_seconds () ;
 scalar_t__ rtc_tm_to_time64 (struct rtc_time*) ;

__attribute__((used)) static int test_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct rtc_test_data *rtd = dev_get_drvdata(dev);

 rtd->offset = rtc_tm_to_time64(tm) - ktime_get_real_seconds();

 return 0;
}
