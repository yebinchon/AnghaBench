#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct udc {int /*<<< orphan*/  dev; TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  ep_irqmsk; int /*<<< orphan*/  ep_irqsts; int /*<<< orphan*/  irqmsk; int /*<<< orphan*/  irqsts; int /*<<< orphan*/  sts; int /*<<< orphan*/  ctl; int /*<<< orphan*/  cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct udc*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ use_dma ; 
 scalar_t__ use_dma_bufferfill_mode ; 
 scalar_t__ use_dma_ppb ; 
 scalar_t__ use_dma_ppb_du ; 

__attribute__((used)) static void FUNC3(struct udc *dev)
{
	FUNC0(dev, "------- Device registers -------\n");
	FUNC0(dev, "dev config     = %08x\n", FUNC2(&dev->regs->cfg));
	FUNC0(dev, "dev control    = %08x\n", FUNC2(&dev->regs->ctl));
	FUNC0(dev, "dev status     = %08x\n", FUNC2(&dev->regs->sts));
	FUNC0(dev, "\n");
	FUNC0(dev, "dev int's      = %08x\n", FUNC2(&dev->regs->irqsts));
	FUNC0(dev, "dev intmask    = %08x\n", FUNC2(&dev->regs->irqmsk));
	FUNC0(dev, "\n");
	FUNC0(dev, "dev ep int's   = %08x\n", FUNC2(&dev->regs->ep_irqsts));
	FUNC0(dev, "dev ep intmask = %08x\n", FUNC2(&dev->regs->ep_irqmsk));
	FUNC0(dev, "\n");
	FUNC0(dev, "USE DMA        = %d\n", use_dma);
	if (use_dma && use_dma_ppb && !use_dma_ppb_du) {
		FUNC0(dev, "DMA mode       = PPBNDU (packet per buffer "
			"WITHOUT desc. update)\n");
		FUNC1(dev->dev, "DMA mode (%s)\n", "PPBNDU");
	} else if (use_dma && use_dma_ppb && use_dma_ppb_du) {
		FUNC0(dev, "DMA mode       = PPBDU (packet per buffer "
			"WITH desc. update)\n");
		FUNC1(dev->dev, "DMA mode (%s)\n", "PPBDU");
	}
	if (use_dma && use_dma_bufferfill_mode) {
		FUNC0(dev, "DMA mode       = BF (buffer fill mode)\n");
		FUNC1(dev->dev, "DMA mode (%s)\n", "BF");
	}
	if (!use_dma)
		FUNC1(dev->dev, "FIFO mode\n");
	FUNC0(dev, "-------------------------------------------------------\n");
}