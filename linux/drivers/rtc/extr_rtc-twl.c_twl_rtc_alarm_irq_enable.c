
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl_rtc {int wake_enabled; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;


 int BIT_RTC_INTERRUPTS_REG_IT_ALARM_M ;
 struct twl_rtc* dev_get_drvdata (struct device*) ;
 scalar_t__ device_can_wakeup (struct device*) ;
 int disable_irq_wake (int) ;
 int enable_irq_wake (int) ;
 int mask_rtc_irq_bit (struct twl_rtc*,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int set_rtc_irq_bit (struct twl_rtc*,int ) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int twl_rtc_alarm_irq_enable(struct device *dev, unsigned enabled)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct twl_rtc *twl_rtc = dev_get_drvdata(dev);
 int irq = platform_get_irq(pdev, 0);
 int ret;

 if (enabled) {
  ret = set_rtc_irq_bit(twl_rtc,
          BIT_RTC_INTERRUPTS_REG_IT_ALARM_M);
  if (device_can_wakeup(dev) && !twl_rtc->wake_enabled) {
   enable_irq_wake(irq);
   twl_rtc->wake_enabled = 1;
  }
 } else {
  ret = mask_rtc_irq_bit(twl_rtc,
           BIT_RTC_INTERRUPTS_REG_IT_ALARM_M);
  if (twl_rtc->wake_enabled) {
   disable_irq_wake(irq);
   twl_rtc->wake_enabled = 0;
  }
 }

 return ret;
}
