
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udc {scalar_t__ chiprev; TYPE_1__* regs; } ;
struct TYPE_2__ {int cfg; int irqsts; int ep_irqsts; } ;


 int AMD_BIT (int ) ;
 int DBG (struct udc*,char*) ;
 scalar_t__ UDC_BCM_REV ;
 int UDC_DEVCFG_SOFTRESET ;
 int UDC_DEV_MSK_DISABLE ;
 int UDC_EPINT_MSK_DISABLE_ALL ;
 int readl (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udc_irq_spinlock ;
 int writel (int ,int *) ;

__attribute__((used)) static void udc_soft_reset(struct udc *dev)
{
 unsigned long flags;

 DBG(dev, "Soft reset\n");





 writel(UDC_EPINT_MSK_DISABLE_ALL, &dev->regs->ep_irqsts);

 writel(UDC_DEV_MSK_DISABLE, &dev->regs->irqsts);




 if (dev->chiprev != UDC_BCM_REV) {
  spin_lock_irqsave(&udc_irq_spinlock, flags);
  writel(AMD_BIT(UDC_DEVCFG_SOFTRESET), &dev->regs->cfg);
  readl(&dev->regs->cfg);
  spin_unlock_irqrestore(&udc_irq_spinlock, flags);
 }
}
