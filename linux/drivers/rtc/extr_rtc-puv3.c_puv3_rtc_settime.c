
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int RTC_RCNR ;
 int dev_dbg (struct device*,char*,struct rtc_time*) ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;
 int writel (unsigned long,int ) ;

__attribute__((used)) static int puv3_rtc_settime(struct device *dev, struct rtc_time *tm)
{
 unsigned long rtc_count = 0;

 dev_dbg(dev, "set time %ptRr\n", tm);

 rtc_tm_to_time(tm, &rtc_count);
 writel(rtc_count, RTC_RCNR);

 return 0;
}
