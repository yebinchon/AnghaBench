
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm63xx_hsspi {int done; scalar_t__ regs; } ;
typedef int irqreturn_t ;


 int HSSPI_INT_CLEAR_ALL ;
 scalar_t__ HSSPI_INT_MASK_REG ;
 scalar_t__ HSSPI_INT_STATUS_MASKED_REG ;
 scalar_t__ HSSPI_INT_STATUS_REG ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ __raw_readl (scalar_t__) ;
 int __raw_writel (int ,scalar_t__) ;
 int complete (int *) ;

__attribute__((used)) static irqreturn_t bcm63xx_hsspi_interrupt(int irq, void *dev_id)
{
 struct bcm63xx_hsspi *bs = (struct bcm63xx_hsspi *)dev_id;

 if (__raw_readl(bs->regs + HSSPI_INT_STATUS_MASKED_REG) == 0)
  return IRQ_NONE;

 __raw_writel(HSSPI_INT_CLEAR_ALL, bs->regs + HSSPI_INT_STATUS_REG);
 __raw_writel(0, bs->regs + HSSPI_INT_MASK_REG);

 complete(&bs->done);

 return IRQ_HANDLED;
}
