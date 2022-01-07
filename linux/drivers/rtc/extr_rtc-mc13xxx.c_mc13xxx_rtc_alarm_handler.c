
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc13xxx_rtc {int rtc; struct mc13xxx* mc13xxx; } ;
struct mc13xxx {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RTC_AF ;
 int RTC_IRQF ;
 int mc13xxx_irq_ack (struct mc13xxx*,int) ;
 int rtc_update_irq (int ,int,int) ;

__attribute__((used)) static irqreturn_t mc13xxx_rtc_alarm_handler(int irq, void *dev)
{
 struct mc13xxx_rtc *priv = dev;
 struct mc13xxx *mc13xxx = priv->mc13xxx;

 rtc_update_irq(priv->rtc, 1, RTC_IRQF | RTC_AF);

 mc13xxx_irq_ack(mc13xxx, irq);

 return IRQ_HANDLED;
}
