
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8925_rtc_info {int rtc_dev; int rtc; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int MAX8925_ALARM0_CNTL ;
 int RTC_AF ;
 int RTC_IRQF ;
 int max8925_set_bits (int ,int ,int,int ) ;
 int rtc_update_irq (int ,int,int) ;

__attribute__((used)) static irqreturn_t rtc_update_handler(int irq, void *data)
{
 struct max8925_rtc_info *info = (struct max8925_rtc_info *)data;


 max8925_set_bits(info->rtc, MAX8925_ALARM0_CNTL, 0x7f, 0);
 rtc_update_irq(info->rtc_dev, 1, RTC_IRQF | RTC_AF);
 return IRQ_HANDLED;
}
