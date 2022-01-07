
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1100_rtc {int rcnr; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 struct sa1100_rtc* dev_get_drvdata (struct device*) ;
 int readl_relaxed (int ) ;
 int rtc_time_to_tm (int ,struct rtc_time*) ;

__attribute__((used)) static int sa1100_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct sa1100_rtc *info = dev_get_drvdata(dev);

 rtc_time_to_tm(readl_relaxed(info->rcnr), tm);
 return 0;
}
