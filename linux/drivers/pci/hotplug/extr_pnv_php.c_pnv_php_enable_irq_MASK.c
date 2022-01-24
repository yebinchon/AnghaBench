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
struct pnv_php_slot {struct pci_dev* pdev; } ;
struct pci_dev {int irq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pci_dev*) ; 
 int FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,char*,int) ; 
 int FUNC5 (struct pnv_php_slot*) ; 
 int /*<<< orphan*/  FUNC6 (struct pnv_php_slot*,int) ; 

__attribute__((used)) static void FUNC7(struct pnv_php_slot *php_slot)
{
	struct pci_dev *pdev = php_slot->pdev;
	int irq, ret;

	/*
	 * The MSI/MSIx interrupt might have been occupied by other
	 * drivers. Don't populate the surprise hotplug capability
	 * in that case.
	 */
	if (FUNC0(pdev))
		return;

	ret = FUNC1(pdev);
	if (ret) {
		FUNC4(pdev, "Error %d enabling device\n", ret);
		return;
	}

	FUNC3(pdev);

	/* Enable MSIx interrupt */
	irq = FUNC5(php_slot);
	if (irq > 0) {
		FUNC6(php_slot, irq);
		return;
	}

	/*
	 * Use MSI if MSIx doesn't work. Fail back to legacy INTx
	 * if MSI doesn't work either
	 */
	ret = FUNC2(pdev);
	if (!ret || pdev->irq) {
		irq = pdev->irq;
		FUNC6(php_slot, irq);
	}
}