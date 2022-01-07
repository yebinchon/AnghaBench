
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dummy; } ;
struct platform_device {int dummy; } ;
typedef int irqreturn_t ;


 int ELAPSEDTIME_INT ;
 int IRQ_HANDLED ;
 int RTCINTREG ;
 int RTC_AF ;
 struct rtc_device* platform_get_drvdata (struct platform_device*) ;
 int rtc2_write (int ,int ) ;
 int rtc_update_irq (struct rtc_device*,int,int ) ;

__attribute__((used)) static irqreturn_t elapsedtime_interrupt(int irq, void *dev_id)
{
 struct platform_device *pdev = (struct platform_device *)dev_id;
 struct rtc_device *rtc = platform_get_drvdata(pdev);

 rtc2_write(RTCINTREG, ELAPSEDTIME_INT);

 rtc_update_irq(rtc, 1, RTC_AF);

 return IRQ_HANDLED;
}
