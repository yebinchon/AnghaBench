
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stm32_rtc_registers {int cr; scalar_t__ sr; } ;
struct stm32_rtc_events {unsigned int alra; } ;
struct stm32_rtc {TYPE_2__* rtc_dev; scalar_t__ base; TYPE_1__* data; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int ops_lock; int dev; } ;
struct TYPE_3__ {struct stm32_rtc_events events; struct stm32_rtc_registers regs; } ;


 int IRQ_HANDLED ;
 int RTC_AF ;
 int RTC_IRQF ;
 unsigned int STM32_RTC_CR_ALRAIE ;
 int dev_dbg (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned int readl_relaxed (scalar_t__) ;
 int rtc_update_irq (TYPE_2__*,int,int) ;
 int stm32_rtc_clear_event_flags (struct stm32_rtc*,unsigned int) ;

__attribute__((used)) static irqreturn_t stm32_rtc_alarm_irq(int irq, void *dev_id)
{
 struct stm32_rtc *rtc = (struct stm32_rtc *)dev_id;
 const struct stm32_rtc_registers *regs = &rtc->data->regs;
 const struct stm32_rtc_events *evts = &rtc->data->events;
 unsigned int status, cr;

 mutex_lock(&rtc->rtc_dev->ops_lock);

 status = readl_relaxed(rtc->base + regs->sr);
 cr = readl_relaxed(rtc->base + regs->cr);

 if ((status & evts->alra) &&
     (cr & STM32_RTC_CR_ALRAIE)) {

  dev_dbg(&rtc->rtc_dev->dev, "Alarm occurred\n");


  rtc_update_irq(rtc->rtc_dev, 1, RTC_IRQF | RTC_AF);


  stm32_rtc_clear_event_flags(rtc, evts->alra);
 }

 mutex_unlock(&rtc->rtc_dev->ops_lock);

 return IRQ_HANDLED;
}
