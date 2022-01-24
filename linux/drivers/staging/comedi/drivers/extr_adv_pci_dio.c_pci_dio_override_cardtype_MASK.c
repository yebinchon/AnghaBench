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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 unsigned long TYPE_PCI1753 ; 
 unsigned long TYPE_PCI1753E ; 
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int) ; 
 scalar_t__ FUNC5 (struct pci_dev*,int,char*) ; 
 int FUNC6 (struct pci_dev*,int) ; 

__attribute__((used)) static unsigned long FUNC7(struct pci_dev *pcidev,
					       unsigned long cardtype)
{
	/*
	 * Change cardtype from TYPE_PCI1753 to TYPE_PCI1753E if expansion
	 * board available.  Need to enable PCI device and request the main
	 * registers PCI BAR temporarily to perform the test.
	 */
	if (cardtype != TYPE_PCI1753)
		return cardtype;
	if (FUNC3(pcidev) < 0)
		return cardtype;
	if (FUNC5(pcidev, 2, "adv_pci_dio") == 0) {
		/*
		 * This test is based on Advantech's "advdaq" driver source
		 * (which declares its module licence as "GPL" although the
		 * driver source does not include a "COPYING" file).
		 */
		unsigned long reg = FUNC6(pcidev, 2) + 53;

		FUNC1(0x05, reg);
		if ((FUNC0(reg) & 0x07) == 0x02) {
			FUNC1(0x02, reg);
			if ((FUNC0(reg) & 0x07) == 0x05)
				cardtype = TYPE_PCI1753E;
		}
		FUNC4(pcidev, 2);
	}
	FUNC2(pcidev);
	return cardtype;
}