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
struct vme_bridge {int /*<<< orphan*/  parent; struct ca91cx42_driver* driver_priv; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct ca91cx42_driver {scalar_t__ base; } ;

/* Variables and functions */
 int CA91CX42_LINT_DMA ; 
 int CA91CX42_LINT_LERR ; 
 int CA91CX42_LINT_MBOX0 ; 
 int CA91CX42_LINT_MBOX1 ; 
 int CA91CX42_LINT_MBOX2 ; 
 int CA91CX42_LINT_MBOX3 ; 
 int CA91CX42_LINT_SW_IACK ; 
 int CA91CX42_LINT_VERR ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ LINT_EN ; 
 scalar_t__ LINT_MAP0 ; 
 scalar_t__ LINT_MAP1 ; 
 scalar_t__ LINT_MAP2 ; 
 scalar_t__ LINT_STAT ; 
 scalar_t__ VINT_EN ; 
 int /*<<< orphan*/  ca91cx42_irqhandler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  driver_name ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vme_bridge*) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct vme_bridge *ca91cx42_bridge)
{
	int result, tmp;
	struct pci_dev *pdev;
	struct ca91cx42_driver *bridge;

	bridge = ca91cx42_bridge->driver_priv;

	/* Need pdev */
	pdev = FUNC3(ca91cx42_bridge->parent);

	/* Disable interrupts from PCI to VME */
	FUNC1(0, bridge->base + VINT_EN);

	/* Disable PCI interrupts */
	FUNC1(0, bridge->base + LINT_EN);
	/* Clear Any Pending PCI Interrupts */
	FUNC1(0x00FFFFFF, bridge->base + LINT_STAT);

	result = FUNC2(pdev->irq, ca91cx42_irqhandler, IRQF_SHARED,
			driver_name, ca91cx42_bridge);
	if (result) {
		FUNC0(&pdev->dev, "Can't get assigned pci irq vector %02X\n",
		       pdev->irq);
		return result;
	}

	/* Ensure all interrupts are mapped to PCI Interrupt 0 */
	FUNC1(0, bridge->base + LINT_MAP0);
	FUNC1(0, bridge->base + LINT_MAP1);
	FUNC1(0, bridge->base + LINT_MAP2);

	/* Enable DMA, mailbox & LM Interrupts */
	tmp = CA91CX42_LINT_MBOX3 | CA91CX42_LINT_MBOX2 | CA91CX42_LINT_MBOX1 |
		CA91CX42_LINT_MBOX0 | CA91CX42_LINT_SW_IACK |
		CA91CX42_LINT_VERR | CA91CX42_LINT_LERR | CA91CX42_LINT_DMA;

	FUNC1(tmp, bridge->base + LINT_EN);

	return 0;
}