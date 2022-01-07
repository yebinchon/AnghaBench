
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_wkalrm {int time; } ;
struct pl030_rtc {scalar_t__ base; } ;
struct device {int dummy; } ;


 scalar_t__ RTC_MR ;
 struct pl030_rtc* dev_get_drvdata (struct device*) ;
 int rtc_tm_to_time (int *,unsigned long*) ;
 int rtc_valid_tm (int *) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int pl030_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct pl030_rtc *rtc = dev_get_drvdata(dev);
 unsigned long time;
 int ret;




 ret = rtc_valid_tm(&alrm->time);
 if (ret == 0)
  ret = rtc_tm_to_time(&alrm->time, &time);
 if (ret == 0)
  writel(time, rtc->base + RTC_MR);
 return ret;
}
