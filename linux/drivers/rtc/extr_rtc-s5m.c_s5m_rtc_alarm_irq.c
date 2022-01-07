
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5m_rtc_info {int rtc_dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RTC_AF ;
 int RTC_IRQF ;
 int rtc_update_irq (int ,int,int) ;

__attribute__((used)) static irqreturn_t s5m_rtc_alarm_irq(int irq, void *data)
{
 struct s5m_rtc_info *info = data;

 rtc_update_irq(info->rtc_dev, 1, RTC_IRQF | RTC_AF);

 return IRQ_HANDLED;
}
