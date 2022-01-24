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
typedef  int uint16_t ;
struct pnv_php_slot {scalar_t__ irq; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct hotplug_slot {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_EXP_SLTSTA ; 
 int PCI_EXP_SLTSTA_DLLSC ; 
 int PCI_EXP_SLTSTA_PDC ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 struct pnv_php_slot* FUNC5 (struct hotplug_slot*) ; 

__attribute__((used)) static int FUNC6(struct hotplug_slot *slot, int probe)
{
	struct pnv_php_slot *php_slot = FUNC5(slot);
	struct pci_dev *bridge = php_slot->pdev;
	uint16_t sts;

	/*
	 * The CAPI folks want pnv_php to drive OpenCAPI slots
	 * which don't have a bridge. Only claim to support
	 * reset_slot() if we have a bridge device (for now...)
	 */
	if (probe)
		return !bridge;

	/* mask our interrupt while resetting the bridge */
	if (php_slot->irq > 0)
		FUNC0(php_slot->irq);

	FUNC2(bridge);

	/* clear any state changes that happened due to the reset */
	FUNC3(php_slot->pdev, PCI_EXP_SLTSTA, &sts);
	sts &= (PCI_EXP_SLTSTA_PDC | PCI_EXP_SLTSTA_DLLSC);
	FUNC4(php_slot->pdev, PCI_EXP_SLTSTA, sts);

	if (php_slot->irq > 0)
		FUNC1(php_slot->irq);

	return 0;
}