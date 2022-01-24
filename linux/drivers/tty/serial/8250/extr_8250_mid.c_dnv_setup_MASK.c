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
struct uart_port {int /*<<< orphan*/  handle_irq; int /*<<< orphan*/  membase; void* irq; int /*<<< orphan*/  dev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hsu_dma_chip {int /*<<< orphan*/  offset; int /*<<< orphan*/  length; int /*<<< orphan*/  regs; void* irq; int /*<<< orphan*/ * dev; } ;
struct mid8250 {struct pci_dev* dma_dev; TYPE_1__* board; struct hsu_dma_chip dma_chip; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DNV_DMA_CHAN_OFFSET ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_IRQ_ALL_TYPES ; 
 int /*<<< orphan*/  dnv_handle_irq ; 
 int FUNC1 (struct hsu_dma_chip*) ; 
 int FUNC2 (struct pci_dev*,int,int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct pci_dev* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mid8250 *mid, struct uart_port *p)
{
	struct hsu_dma_chip *chip = &mid->dma_chip;
	struct pci_dev *pdev = FUNC6(p->dev);
	unsigned int bar = FUNC0(mid->board->flags);
	int ret;

	FUNC5(pdev);

	ret = FUNC2(pdev, 1, 1, PCI_IRQ_ALL_TYPES);
	if (ret < 0)
		return ret;

	p->irq = FUNC3(pdev, 0);

	chip->dev = &pdev->dev;
	chip->irq = FUNC3(pdev, 0);
	chip->regs = p->membase;
	chip->length = FUNC4(pdev, bar);
	chip->offset = DNV_DMA_CHAN_OFFSET;

	/* Falling back to PIO mode if DMA probing fails */
	ret = FUNC1(chip);
	if (ret)
		return 0;

	mid->dma_dev = pdev;

	p->handle_irq = dnv_handle_irq;
	return 0;
}