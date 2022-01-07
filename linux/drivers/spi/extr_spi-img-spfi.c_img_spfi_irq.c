
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct img_spfi {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SPFI_INTERRUPT_CLEAR ;
 int SPFI_INTERRUPT_IACCESS ;
 int SPFI_INTERRUPT_STATUS ;
 int dev_err (int ,char*) ;
 int spfi_readl (struct img_spfi*,int ) ;
 int spfi_writel (struct img_spfi*,int,int ) ;

__attribute__((used)) static irqreturn_t img_spfi_irq(int irq, void *dev_id)
{
 struct img_spfi *spfi = (struct img_spfi *)dev_id;
 u32 status;

 status = spfi_readl(spfi, SPFI_INTERRUPT_STATUS);
 if (status & SPFI_INTERRUPT_IACCESS) {
  spfi_writel(spfi, SPFI_INTERRUPT_IACCESS, SPFI_INTERRUPT_CLEAR);
  dev_err(spfi->dev, "Illegal access interrupt");
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
