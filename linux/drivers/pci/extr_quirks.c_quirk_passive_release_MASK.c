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
 int /*<<< orphan*/  PCI_DEVICE_ID_INTEL_82371SB_0 ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_INTEL ; 
 struct pci_dev* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,unsigned char) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *dev)
{
	struct pci_dev *d = NULL;
	unsigned char dlc;

	/*
	 * We have to make sure a particular bit is set in the PIIX3
	 * ISA bridge, so we have to go out and find it.
	 */
	while ((d = FUNC0(PCI_VENDOR_ID_INTEL, PCI_DEVICE_ID_INTEL_82371SB_0, d))) {
		FUNC2(d, 0x82, &dlc);
		if (!(dlc & 1<<1)) {
			FUNC1(d, "PIIX3: Enabling Passive Release\n");
			dlc |= 1<<1;
			FUNC3(d, 0x82, dlc);
		}
	}
}