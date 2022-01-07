
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct pl031_local {scalar_t__ base; } ;
struct device {int dummy; } ;


 scalar_t__ RTC_DR ;
 scalar_t__ RTC_YDR ;
 struct pl031_local* dev_get_drvdata (struct device*) ;
 int pl031_stv2_time_to_tm (int ,int ,struct rtc_time*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int pl031_stv2_read_time(struct device *dev, struct rtc_time *tm)
{
 struct pl031_local *ldata = dev_get_drvdata(dev);

 pl031_stv2_time_to_tm(readl(ldata->base + RTC_DR),
   readl(ldata->base + RTC_YDR), tm);

 return 0;
}
