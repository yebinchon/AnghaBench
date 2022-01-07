
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlnx_rtc_dev {scalar_t__ reg_base; } ;
struct rtc_wkalrm {int enabled; int time; } ;
struct device {int dummy; } ;


 scalar_t__ RTC_ALRM ;
 int RTC_INT_ALRM ;
 scalar_t__ RTC_INT_MASK ;
 struct xlnx_rtc_dev* dev_get_drvdata (struct device*) ;
 int readl (scalar_t__) ;
 int rtc_time64_to_tm (int,int *) ;

__attribute__((used)) static int xlnx_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct xlnx_rtc_dev *xrtcdev = dev_get_drvdata(dev);

 rtc_time64_to_tm(readl(xrtcdev->reg_base + RTC_ALRM), &alrm->time);
 alrm->enabled = readl(xrtcdev->reg_base + RTC_INT_MASK) & RTC_INT_ALRM;

 return 0;
}
