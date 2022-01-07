
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int RTC_RCNR ;
 int dev_dbg (struct device*,char*,struct rtc_time*) ;
 int readl (int ) ;
 int rtc_time_to_tm (int ,struct rtc_time*) ;

__attribute__((used)) static int puv3_rtc_gettime(struct device *dev, struct rtc_time *rtc_tm)
{
 rtc_time_to_tm(readl(RTC_RCNR), rtc_tm);

 dev_dbg(dev, "read time %ptRr\n", rtc_tm);

 return 0;
}
