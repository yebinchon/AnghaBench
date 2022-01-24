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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct pnv_php_slot {int flags; int irq; int /*<<< orphan*/  name; int /*<<< orphan*/  dn; int /*<<< orphan*/  wq; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  PCI_EXP_SLTCTL ; 
 int PCI_EXP_SLTCTL_DLLSCE ; 
 int PCI_EXP_SLTCTL_HPIE ; 
 int PCI_EXP_SLTCTL_PDCE ; 
 int /*<<< orphan*/  PCI_EXP_SLTSTA ; 
 int PCI_EXP_SLTSTA_DLLSC ; 
 int PCI_EXP_SLTSTA_PDC ; 
 int PNV_PHP_FLAG_BROKEN_PDC ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pnv_php_slot*,int) ; 
 int /*<<< orphan*/  pnv_php_interrupt ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pnv_php_slot*) ; 

__attribute__((used)) static void FUNC7(struct pnv_php_slot *php_slot, int irq)
{
	struct pci_dev *pdev = php_slot->pdev;
	u32 broken_pdc = 0;
	u16 sts, ctrl;
	int ret;

	/* Allocate workqueue */
	php_slot->wq = FUNC0("pciehp-%s", 0, 0, php_slot->name);
	if (!php_slot->wq) {
		FUNC2(pdev, "Cannot alloc workqueue\n");
		FUNC5(php_slot, true);
		return;
	}

	/* Check PDC (Presence Detection Change) is broken or not */
	ret = FUNC1(php_slot->dn, "ibm,slot-broken-pdc",
				   &broken_pdc);
	if (!ret && broken_pdc)
		php_slot->flags |= PNV_PHP_FLAG_BROKEN_PDC;

	/* Clear pending interrupts */
	FUNC3(pdev, PCI_EXP_SLTSTA, &sts);
	if (php_slot->flags & PNV_PHP_FLAG_BROKEN_PDC)
		sts |= PCI_EXP_SLTSTA_DLLSC;
	else
		sts |= (PCI_EXP_SLTSTA_PDC | PCI_EXP_SLTSTA_DLLSC);
	FUNC4(pdev, PCI_EXP_SLTSTA, sts);

	/* Request the interrupt */
	ret = FUNC6(irq, pnv_php_interrupt, IRQF_SHARED,
			  php_slot->name, php_slot);
	if (ret) {
		FUNC5(php_slot, true);
		FUNC2(pdev, "Error %d enabling IRQ %d\n", ret, irq);
		return;
	}

	/* Enable the interrupts */
	FUNC3(pdev, PCI_EXP_SLTCTL, &ctrl);
	if (php_slot->flags & PNV_PHP_FLAG_BROKEN_PDC) {
		ctrl &= ~PCI_EXP_SLTCTL_PDCE;
		ctrl |= (PCI_EXP_SLTCTL_HPIE |
			 PCI_EXP_SLTCTL_DLLSCE);
	} else {
		ctrl |= (PCI_EXP_SLTCTL_HPIE |
			 PCI_EXP_SLTCTL_PDCE |
			 PCI_EXP_SLTCTL_DLLSCE);
	}
	FUNC4(pdev, PCI_EXP_SLTCTL, ctrl);

	/* The interrupt is initialized successfully when @irq is valid */
	php_slot->irq = irq;
}