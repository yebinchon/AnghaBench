
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8907_rtc {int rtc_dev; int regmap; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int MAX8907_REG_ALARM0_CNTL ;
 int RTC_AF ;
 int RTC_IRQF ;
 int regmap_write (int ,int ,int ) ;
 int rtc_update_irq (int ,int,int) ;

__attribute__((used)) static irqreturn_t max8907_irq_handler(int irq, void *data)
{
 struct max8907_rtc *rtc = data;

 regmap_write(rtc->regmap, MAX8907_REG_ALARM0_CNTL, 0);

 rtc_update_irq(rtc->rtc_dev, 1, RTC_IRQF | RTC_AF);

 return IRQ_HANDLED;
}
