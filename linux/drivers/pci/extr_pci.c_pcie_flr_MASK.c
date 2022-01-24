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
struct pci_dev {scalar_t__ imm_ready; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIE_RESET_READY_POLL_MS ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL_BCR_FLR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct pci_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct pci_dev *dev)
{
	if (!FUNC3(dev))
		FUNC2(dev, "timed out waiting for pending transaction; performing function level reset anyway\n");

	FUNC4(dev, PCI_EXP_DEVCTL, PCI_EXP_DEVCTL_BCR_FLR);

	if (dev->imm_ready)
		return 0;

	/*
	 * Per PCIe r4.0, sec 6.6.2, a device must complete an FLR within
	 * 100ms, but may silently discard requests while the FLR is in
	 * progress.  Wait 100ms before trying to access the device.
	 */
	FUNC0(100);

	return FUNC1(dev, "FLR", PCIE_RESET_READY_POLL_MS);
}