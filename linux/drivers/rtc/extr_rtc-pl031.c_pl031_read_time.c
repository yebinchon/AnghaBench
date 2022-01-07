
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct pl031_local {scalar_t__ base; } ;
struct device {int dummy; } ;


 scalar_t__ RTC_DR ;
 struct pl031_local* dev_get_drvdata (struct device*) ;
 int readl (scalar_t__) ;
 int rtc_time_to_tm (int ,struct rtc_time*) ;

__attribute__((used)) static int pl031_read_time(struct device *dev, struct rtc_time *tm)
{
 struct pl031_local *ldata = dev_get_drvdata(dev);

 rtc_time_to_tm(readl(ldata->base + RTC_DR), tm);

 return 0;
}
