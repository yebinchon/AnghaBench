#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct udc {int /*<<< orphan*/  virt_addr; TYPE_1__* regs; int /*<<< orphan*/  driver; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct TYPE_4__ {int /*<<< orphan*/  gadget; } ;
struct TYPE_3__ {int /*<<< orphan*/  cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UDC_DEVCFG_SOFTRESET ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct udc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct udc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct udc* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* udc ; 
 int /*<<< orphan*/  FUNC10 (struct udc*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct pci_dev *pdev)
{
	struct udc		*dev;

	dev = FUNC6(pdev);

	FUNC11(&udc->gadget);
	/* gadget driver must not be registered */
	if (FUNC1(dev->driver))
		return;

	/* dma pool cleanup */
	FUNC2(dev);

	/* reset controller */
	FUNC12(FUNC0(UDC_DEVCFG_SOFTRESET), &dev->regs->cfg);
	FUNC3(pdev->irq, dev);
	FUNC4(dev->virt_addr);
	FUNC9(FUNC8(pdev, 0),
			   FUNC7(pdev, 0));
	FUNC5(pdev);

	FUNC10(dev);
}