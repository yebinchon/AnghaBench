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
struct pci_dev {int dev_flags; int current_state; scalar_t__ pm_cap; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTTY ; 
 int /*<<< orphan*/  PCIE_RESET_READY_POLL_MS ; 
 int PCI_D0 ; 
 int PCI_D3hot ; 
 int PCI_DEV_FLAGS_NO_PM_RESET ; 
 scalar_t__ PCI_PM_CTRL ; 
 int PCI_PM_CTRL_NO_SOFT_RESET ; 
 int PCI_PM_CTRL_STATE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int FUNC1 (struct pci_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *dev, int probe)
{
	u16 csr;

	if (!dev->pm_cap || dev->dev_flags & PCI_DEV_FLAGS_NO_PM_RESET)
		return -ENOTTY;

	FUNC2(dev, dev->pm_cap + PCI_PM_CTRL, &csr);
	if (csr & PCI_PM_CTRL_NO_SOFT_RESET)
		return -ENOTTY;

	if (probe)
		return 0;

	if (dev->current_state != PCI_D0)
		return -EINVAL;

	csr &= ~PCI_PM_CTRL_STATE_MASK;
	csr |= PCI_D3hot;
	FUNC3(dev, dev->pm_cap + PCI_PM_CTRL, csr);
	FUNC0(dev);

	csr &= ~PCI_PM_CTRL_STATE_MASK;
	csr |= PCI_D0;
	FUNC3(dev, dev->pm_cap + PCI_PM_CTRL, csr);
	FUNC0(dev);

	return FUNC1(dev, "PM D3->D0", PCIE_RESET_READY_POLL_MS);
}