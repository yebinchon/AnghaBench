
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct m48t59_private {int rtc; int lock; } ;
struct m48t59_plat_data {int dummy; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int M48T59_FLAGS ;
 int M48T59_FLAGS_AF ;
 int M48T59_READ (int ) ;
 int RTC_AF ;
 int RTC_IRQF ;
 struct m48t59_private* dev_get_drvdata (struct device*) ;
 struct m48t59_plat_data* dev_get_platdata (struct device*) ;
 int rtc_update_irq (int ,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t m48t59_rtc_interrupt(int irq, void *dev_id)
{
 struct device *dev = (struct device *)dev_id;
 struct m48t59_plat_data *pdata = dev_get_platdata(dev);
 struct m48t59_private *m48t59 = dev_get_drvdata(dev);
 u8 event;

 spin_lock(&m48t59->lock);
 event = M48T59_READ(M48T59_FLAGS);
 spin_unlock(&m48t59->lock);

 if (event & M48T59_FLAGS_AF) {
  rtc_update_irq(m48t59->rtc, 1, (RTC_AF | RTC_IRQF));
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
