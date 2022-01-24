#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct uart_port {int /*<<< orphan*/  handle_irq; int /*<<< orphan*/  dev; } ;
struct pci_dev {int /*<<< orphan*/  bus; int /*<<< orphan*/  devfn; } ;
struct mid8250 {int dma_index; int /*<<< orphan*/  dma_dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tng_handle_irq ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mid8250 *mid, struct uart_port *p)
{
	struct pci_dev *pdev = FUNC3(p->dev);
	int index = FUNC1(pdev->devfn);

	/*
	 * Device 0000:00:04.0 is not a real HSU port. It provides a global
	 * register set for all HSU ports, although it has the same PCI ID.
	 * Skip it here.
	 */
	if (index-- == 0)
		return -ENODEV;

	mid->dma_index = index;
	mid->dma_dev = FUNC2(pdev->bus, FUNC0(5, 0));

	p->handle_irq = tng_handle_irq;
	return 0;
}