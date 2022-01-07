
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1100_rtc {int rcnr; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 struct sa1100_rtc* dev_get_drvdata (struct device*) ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;
 int writel_relaxed (unsigned long,int ) ;

__attribute__((used)) static int sa1100_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct sa1100_rtc *info = dev_get_drvdata(dev);
 unsigned long time;
 int ret;

 ret = rtc_tm_to_time(tm, &time);
 if (ret == 0)
  writel_relaxed(time, info->rcnr);
 return ret;
}
