
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl_rtc {scalar_t__ class; } ;
struct platform_device {int dummy; } ;


 int BIT_RTC_INTERRUPTS_REG_IT_ALARM_M ;
 int BIT_RTC_INTERRUPTS_REG_IT_TIMER_M ;
 int REG_INT_MSK_LINE_A ;
 int REG_INT_MSK_STS_A ;
 int TWL6030_RTC_INT_MASK ;
 scalar_t__ TWL_6030 ;
 int mask_rtc_irq_bit (struct twl_rtc*,int ) ;
 struct twl_rtc* platform_get_drvdata (struct platform_device*) ;
 int twl6030_interrupt_mask (int ,int ) ;

__attribute__((used)) static int twl_rtc_remove(struct platform_device *pdev)
{
 struct twl_rtc *twl_rtc = platform_get_drvdata(pdev);


 mask_rtc_irq_bit(twl_rtc, BIT_RTC_INTERRUPTS_REG_IT_ALARM_M);
 mask_rtc_irq_bit(twl_rtc, BIT_RTC_INTERRUPTS_REG_IT_TIMER_M);
 if (twl_rtc->class == TWL_6030) {
  twl6030_interrupt_mask(TWL6030_RTC_INT_MASK,
   REG_INT_MSK_LINE_A);
  twl6030_interrupt_mask(TWL6030_RTC_INT_MASK,
   REG_INT_MSK_STS_A);
 }

 return 0;
}
