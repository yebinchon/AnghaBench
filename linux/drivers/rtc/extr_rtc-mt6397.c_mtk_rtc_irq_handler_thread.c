
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt6397_rtc {int lock; scalar_t__ addr_base; int regmap; int rtc_dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RTC_AF ;
 int RTC_IRQF ;
 scalar_t__ RTC_IRQ_EN ;
 int RTC_IRQ_EN_AL ;
 scalar_t__ RTC_IRQ_STA ;
 int RTC_IRQ_STA_AL ;
 int mtk_rtc_write_trigger (struct mt6397_rtc*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,scalar_t__,int*) ;
 scalar_t__ regmap_write (int ,scalar_t__,int) ;
 int rtc_update_irq (int ,int,int) ;

__attribute__((used)) static irqreturn_t mtk_rtc_irq_handler_thread(int irq, void *data)
{
 struct mt6397_rtc *rtc = data;
 u32 irqsta, irqen;
 int ret;

 ret = regmap_read(rtc->regmap, rtc->addr_base + RTC_IRQ_STA, &irqsta);
 if ((ret >= 0) && (irqsta & RTC_IRQ_STA_AL)) {
  rtc_update_irq(rtc->rtc_dev, 1, RTC_IRQF | RTC_AF);
  irqen = irqsta & ~RTC_IRQ_EN_AL;
  mutex_lock(&rtc->lock);
  if (regmap_write(rtc->regmap, rtc->addr_base + RTC_IRQ_EN,
     irqen) < 0)
   mtk_rtc_write_trigger(rtc);
  mutex_unlock(&rtc->lock);

  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
