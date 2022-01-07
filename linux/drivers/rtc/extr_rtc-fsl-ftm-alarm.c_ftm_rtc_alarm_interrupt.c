
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftm_rtc {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int ftm_clean_alarm (struct ftm_rtc*) ;
 int ftm_irq_acknowledge (struct ftm_rtc*) ;
 int ftm_irq_disable (struct ftm_rtc*) ;

__attribute__((used)) static irqreturn_t ftm_rtc_alarm_interrupt(int irq, void *dev)
{
 struct ftm_rtc *rtc = dev;

 ftm_irq_acknowledge(rtc);
 ftm_irq_disable(rtc);
 ftm_clean_alarm(rtc);

 return IRQ_HANDLED;
}
