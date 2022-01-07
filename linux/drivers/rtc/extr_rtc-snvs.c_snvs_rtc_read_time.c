
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snvs_rtc_data {int dummy; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 struct snvs_rtc_data* dev_get_drvdata (struct device*) ;
 unsigned long rtc_read_lp_counter (struct snvs_rtc_data*) ;
 int rtc_time64_to_tm (unsigned long,struct rtc_time*) ;

__attribute__((used)) static int snvs_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct snvs_rtc_data *data = dev_get_drvdata(dev);
 unsigned long time = rtc_read_lp_counter(data);

 rtc_time64_to_tm(time, tm);

 return 0;
}
