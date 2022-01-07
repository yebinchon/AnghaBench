
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xlnx_rtc_dev {scalar_t__ reg_base; } ;
struct device {int dummy; } ;


 int RTC_INT_ALRM ;
 scalar_t__ RTC_INT_DIS ;
 scalar_t__ RTC_INT_EN ;
 struct xlnx_rtc_dev* dev_get_drvdata (struct device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int xlnx_rtc_alarm_irq_enable(struct device *dev, u32 enabled)
{
 struct xlnx_rtc_dev *xrtcdev = dev_get_drvdata(dev);

 if (enabled)
  writel(RTC_INT_ALRM, xrtcdev->reg_base + RTC_INT_EN);
 else
  writel(RTC_INT_ALRM, xrtcdev->reg_base + RTC_INT_DIS);

 return 0;
}
