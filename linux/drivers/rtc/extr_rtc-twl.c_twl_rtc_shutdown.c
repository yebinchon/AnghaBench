
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl_rtc {int dummy; } ;
struct platform_device {int dummy; } ;


 int BIT_RTC_INTERRUPTS_REG_IT_TIMER_M ;
 int mask_rtc_irq_bit (struct twl_rtc*,int ) ;
 struct twl_rtc* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void twl_rtc_shutdown(struct platform_device *pdev)
{
 struct twl_rtc *twl_rtc = platform_get_drvdata(pdev);



 mask_rtc_irq_bit(twl_rtc, BIT_RTC_INTERRUPTS_REG_IT_TIMER_M);
}
