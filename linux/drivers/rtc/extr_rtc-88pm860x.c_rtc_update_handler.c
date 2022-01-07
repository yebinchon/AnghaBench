
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_rtc_info {int rtc_dev; int i2c; } ;
typedef int irqreturn_t ;


 int ALARM ;
 int ALARM_EN ;
 int ALARM_WAKEUP ;
 int IRQ_HANDLED ;
 int PM8607_RTC1 ;
 int RTC_AF ;
 int pm860x_set_bits (int ,int ,int,int) ;
 int rtc_update_irq (int ,int,int ) ;

__attribute__((used)) static irqreturn_t rtc_update_handler(int irq, void *data)
{
 struct pm860x_rtc_info *info = (struct pm860x_rtc_info *)data;
 int mask;

 mask = ALARM | ALARM_WAKEUP;
 pm860x_set_bits(info->i2c, PM8607_RTC1, mask | ALARM_EN, mask);
 rtc_update_irq(info->rtc_dev, 1, RTC_AF);
 return IRQ_HANDLED;
}
