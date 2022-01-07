
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sunxi_rtc_dev {scalar_t__ base; } ;


 scalar_t__ SUNXI_ALRM_EN ;
 int SUNXI_ALRM_EN_CNT_EN ;
 scalar_t__ SUNXI_ALRM_IRQ_EN ;
 int SUNXI_ALRM_IRQ_EN_CNT_IRQ_EN ;
 scalar_t__ SUNXI_ALRM_IRQ_STA ;
 int SUNXI_ALRM_IRQ_STA_CNT_IRQ_PEND ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void sunxi_rtc_setaie(unsigned int to, struct sunxi_rtc_dev *chip)
{
 u32 alrm_val = 0;
 u32 alrm_irq_val = 0;

 if (to) {
  alrm_val = readl(chip->base + SUNXI_ALRM_EN);
  alrm_val |= SUNXI_ALRM_EN_CNT_EN;

  alrm_irq_val = readl(chip->base + SUNXI_ALRM_IRQ_EN);
  alrm_irq_val |= SUNXI_ALRM_IRQ_EN_CNT_IRQ_EN;
 } else {
  writel(SUNXI_ALRM_IRQ_STA_CNT_IRQ_PEND,
    chip->base + SUNXI_ALRM_IRQ_STA);
 }

 writel(alrm_val, chip->base + SUNXI_ALRM_EN);
 writel(alrm_irq_val, chip->base + SUNXI_ALRM_IRQ_EN);
}
