
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udc {int dev; TYPE_1__* regs; } ;
struct TYPE_2__ {int ep_irqmsk; int ep_irqsts; int irqmsk; int irqsts; int sts; int ctl; int cfg; } ;


 int DBG (struct udc*,char*,...) ;
 int dev_info (int ,char*,...) ;
 int readl (int *) ;
 scalar_t__ use_dma ;
 scalar_t__ use_dma_bufferfill_mode ;
 scalar_t__ use_dma_ppb ;
 scalar_t__ use_dma_ppb_du ;

__attribute__((used)) static void print_regs(struct udc *dev)
{
 DBG(dev, "------- Device registers -------\n");
 DBG(dev, "dev config     = %08x\n", readl(&dev->regs->cfg));
 DBG(dev, "dev control    = %08x\n", readl(&dev->regs->ctl));
 DBG(dev, "dev status     = %08x\n", readl(&dev->regs->sts));
 DBG(dev, "\n");
 DBG(dev, "dev int's      = %08x\n", readl(&dev->regs->irqsts));
 DBG(dev, "dev intmask    = %08x\n", readl(&dev->regs->irqmsk));
 DBG(dev, "\n");
 DBG(dev, "dev ep int's   = %08x\n", readl(&dev->regs->ep_irqsts));
 DBG(dev, "dev ep intmask = %08x\n", readl(&dev->regs->ep_irqmsk));
 DBG(dev, "\n");
 DBG(dev, "USE DMA        = %d\n", use_dma);
 if (use_dma && use_dma_ppb && !use_dma_ppb_du) {
  DBG(dev, "DMA mode       = PPBNDU (packet per buffer "
   "WITHOUT desc. update)\n");
  dev_info(dev->dev, "DMA mode (%s)\n", "PPBNDU");
 } else if (use_dma && use_dma_ppb && use_dma_ppb_du) {
  DBG(dev, "DMA mode       = PPBDU (packet per buffer "
   "WITH desc. update)\n");
  dev_info(dev->dev, "DMA mode (%s)\n", "PPBDU");
 }
 if (use_dma && use_dma_bufferfill_mode) {
  DBG(dev, "DMA mode       = BF (buffer fill mode)\n");
  dev_info(dev->dev, "DMA mode (%s)\n", "BF");
 }
 if (!use_dma)
  dev_info(dev->dev, "FIFO mode\n");
 DBG(dev, "-------------------------------------------------------\n");
}
