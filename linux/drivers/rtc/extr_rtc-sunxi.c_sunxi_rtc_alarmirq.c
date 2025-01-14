
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sunxi_rtc_dev {int rtc; scalar_t__ base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RTC_AF ;
 int RTC_IRQF ;
 scalar_t__ SUNXI_ALRM_IRQ_STA ;
 int SUNXI_ALRM_IRQ_STA_CNT_IRQ_PEND ;
 int readl (scalar_t__) ;
 int rtc_update_irq (int ,int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t sunxi_rtc_alarmirq(int irq, void *id)
{
 struct sunxi_rtc_dev *chip = (struct sunxi_rtc_dev *) id;
 u32 val;

 val = readl(chip->base + SUNXI_ALRM_IRQ_STA);

 if (val & SUNXI_ALRM_IRQ_STA_CNT_IRQ_PEND) {
  val |= SUNXI_ALRM_IRQ_STA_CNT_IRQ_PEND;
  writel(val, chip->base + SUNXI_ALRM_IRQ_STA);

  rtc_update_irq(chip->rtc, 1, RTC_AF | RTC_IRQF);

  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
