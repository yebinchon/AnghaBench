
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spear_rtc_config {int rtc; int lock; scalar_t__ ioaddr; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned long RTC_AF ;
 unsigned int RTC_INT_MASK ;
 unsigned long RTC_IRQF ;
 scalar_t__ STATUS_REG ;
 unsigned int readl (scalar_t__) ;
 int rtc_update_irq (int ,int,unsigned long) ;
 int spear_rtc_clear_interrupt (struct spear_rtc_config*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t spear_rtc_irq(int irq, void *dev_id)
{
 struct spear_rtc_config *config = dev_id;
 unsigned long flags, events = 0;
 unsigned int irq_data;

 spin_lock_irqsave(&config->lock, flags);
 irq_data = readl(config->ioaddr + STATUS_REG);
 spin_unlock_irqrestore(&config->lock, flags);

 if ((irq_data & RTC_INT_MASK)) {
  spear_rtc_clear_interrupt(config);
  events = RTC_IRQF | RTC_AF;
  rtc_update_irq(config->rtc, 1, events);
  return IRQ_HANDLED;
 } else
  return IRQ_NONE;

}
