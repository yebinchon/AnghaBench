
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlnx_rtc_dev {scalar_t__ reg_base; } ;
struct rtc_wkalrm {int enabled; int time; } ;
struct device {int dummy; } ;


 scalar_t__ RTC_ALRM ;
 struct xlnx_rtc_dev* dev_get_drvdata (struct device*) ;
 unsigned long rtc_tm_to_time64 (int *) ;
 int writel (int ,scalar_t__) ;
 int xlnx_rtc_alarm_irq_enable (struct device*,int ) ;

__attribute__((used)) static int xlnx_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct xlnx_rtc_dev *xrtcdev = dev_get_drvdata(dev);
 unsigned long alarm_time;

 alarm_time = rtc_tm_to_time64(&alrm->time);

 writel((u32)alarm_time, (xrtcdev->reg_base + RTC_ALRM));

 xlnx_rtc_alarm_irq_enable(dev, alrm->enabled);

 return 0;
}
