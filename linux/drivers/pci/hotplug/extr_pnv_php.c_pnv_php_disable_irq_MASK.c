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
typedef  int u16 ;
struct pnv_php_slot {int irq; int /*<<< orphan*/ * wq; struct pci_dev* pdev; } ;
struct pci_dev {scalar_t__ msi_enabled; scalar_t__ msix_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_EXP_SLTCTL ; 
 int PCI_EXP_SLTCTL_DLLSCE ; 
 int PCI_EXP_SLTCTL_HPIE ; 
 int PCI_EXP_SLTCTL_PDCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,struct pnv_php_slot*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct pnv_php_slot *php_slot,
				bool disable_device)
{
	struct pci_dev *pdev = php_slot->pdev;
	int irq = php_slot->irq;
	u16 ctrl;

	if (php_slot->irq > 0) {
		FUNC5(pdev, PCI_EXP_SLTCTL, &ctrl);
		ctrl &= ~(PCI_EXP_SLTCTL_HPIE |
			  PCI_EXP_SLTCTL_PDCE |
			  PCI_EXP_SLTCTL_DLLSCE);
		FUNC6(pdev, PCI_EXP_SLTCTL, ctrl);

		FUNC1(php_slot->irq, php_slot);
		php_slot->irq = 0;
	}

	if (php_slot->wq) {
		FUNC0(php_slot->wq);
		php_slot->wq = NULL;
	}

	if (disable_device || irq > 0) {
		if (pdev->msix_enabled)
			FUNC4(pdev);
		else if (pdev->msi_enabled)
			FUNC3(pdev);

		FUNC2(pdev);
	}
}