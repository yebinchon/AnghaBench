
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic32_rtc_dev {int clk; int rtc; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RTC_AF ;
 int RTC_IRQF ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int pic32_rtc_alarm_clk_enable (struct pic32_rtc_dev*,int) ;
 int rtc_update_irq (int ,int,int) ;

__attribute__((used)) static irqreturn_t pic32_rtc_alarmirq(int irq, void *id)
{
 struct pic32_rtc_dev *pdata = (struct pic32_rtc_dev *)id;

 clk_enable(pdata->clk);
 rtc_update_irq(pdata->rtc, 1, RTC_AF | RTC_IRQF);
 clk_disable(pdata->clk);

 pic32_rtc_alarm_clk_enable(pdata, 0);

 return IRQ_HANDLED;
}
