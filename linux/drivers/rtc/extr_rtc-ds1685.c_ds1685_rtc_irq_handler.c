
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct platform_device {int dummy; } ;
struct mutex {int dummy; } ;
struct ds1685_priv {int (* read ) (struct ds1685_priv*,int ) ;TYPE_1__* dev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct mutex ops_lock; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned long RTC_AF ;
 int RTC_CTRL_B ;
 int RTC_CTRL_B_AIE ;
 int RTC_CTRL_B_PAU_MASK ;
 int RTC_CTRL_B_PIE ;
 int RTC_CTRL_B_UIE ;
 int RTC_CTRL_C ;
 int RTC_CTRL_C_AF ;
 int RTC_CTRL_C_IRQF ;
 int RTC_CTRL_C_PF ;
 int RTC_CTRL_C_UF ;
 unsigned long RTC_IRQF ;
 unsigned long RTC_PF ;
 unsigned long RTC_UF ;
 int ds1685_rtc_extended_irq (struct ds1685_priv*,struct platform_device*) ;
 scalar_t__ likely (int) ;
 int mutex_lock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;
 struct ds1685_priv* platform_get_drvdata (struct platform_device*) ;
 int rtc_update_irq (TYPE_1__*,int,unsigned long) ;
 int stub1 (struct ds1685_priv*,int ) ;
 int stub2 (struct ds1685_priv*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t
ds1685_rtc_irq_handler(int irq, void *dev_id)
{
 struct platform_device *pdev = dev_id;
 struct ds1685_priv *rtc = platform_get_drvdata(pdev);
 struct mutex *rtc_mutex;
 u8 ctrlb, ctrlc;
 unsigned long events = 0;
 u8 num_irqs = 0;


 if (unlikely(!rtc))
  return IRQ_HANDLED;

 rtc_mutex = &rtc->dev->ops_lock;
 mutex_lock(rtc_mutex);


 ctrlb = rtc->read(rtc, RTC_CTRL_B);
 ctrlc = rtc->read(rtc, RTC_CTRL_C);


 if (likely(ctrlc & RTC_CTRL_C_IRQF)) {





  if (likely(ctrlc & RTC_CTRL_B_PAU_MASK)) {
   events = RTC_IRQF;


   if ((ctrlb & RTC_CTRL_B_PIE) &&
       (ctrlc & RTC_CTRL_C_PF)) {
    events |= RTC_PF;
    num_irqs++;
   }


   if ((ctrlb & RTC_CTRL_B_AIE) &&
       (ctrlc & RTC_CTRL_C_AF)) {
    events |= RTC_AF;
    num_irqs++;
   }


   if ((ctrlb & RTC_CTRL_B_UIE) &&
       (ctrlc & RTC_CTRL_C_UF)) {
    events |= RTC_UF;
    num_irqs++;
   }
  } else {




   ds1685_rtc_extended_irq(rtc, pdev);
  }
 }
 rtc_update_irq(rtc->dev, num_irqs, events);
 mutex_unlock(rtc_mutex);

 return events ? IRQ_HANDLED : IRQ_NONE;
}
