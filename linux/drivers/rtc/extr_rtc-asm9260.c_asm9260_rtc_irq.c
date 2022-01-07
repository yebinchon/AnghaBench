
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct asm9260_rtc_priv {TYPE_1__* rtc; scalar_t__ iobase; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int ops_lock; } ;


 scalar_t__ HW_CIIR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned long RTC_AF ;
 unsigned long RTC_IRQF ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtc_update_irq (TYPE_1__*,int,unsigned long) ;

__attribute__((used)) static irqreturn_t asm9260_rtc_irq(int irq, void *dev_id)
{
 struct asm9260_rtc_priv *priv = dev_id;
 u32 isr;
 unsigned long events = 0;

 mutex_lock(&priv->rtc->ops_lock);
 isr = ioread32(priv->iobase + HW_CIIR);
 if (!isr) {
  mutex_unlock(&priv->rtc->ops_lock);
  return IRQ_NONE;
 }

 iowrite32(0, priv->iobase + HW_CIIR);
 mutex_unlock(&priv->rtc->ops_lock);

 events |= RTC_AF | RTC_IRQF;

 rtc_update_irq(priv->rtc, 1, events);

 return IRQ_HANDLED;
}
