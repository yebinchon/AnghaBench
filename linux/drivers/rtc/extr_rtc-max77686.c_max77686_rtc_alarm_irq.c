
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77686_rtc_info {int rtc_dev; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RTC_AF ;
 int RTC_IRQF ;
 int dev_dbg (int ,char*,int) ;
 int rtc_update_irq (int ,int,int) ;

__attribute__((used)) static irqreturn_t max77686_rtc_alarm_irq(int irq, void *data)
{
 struct max77686_rtc_info *info = data;

 dev_dbg(info->dev, "RTC alarm IRQ: %d\n", irq);

 rtc_update_irq(info->rtc_dev, 1, RTC_IRQF | RTC_AF);

 return IRQ_HANDLED;
}
