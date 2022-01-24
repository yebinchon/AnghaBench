#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct pci_dev {TYPE_1__* bus; } ;
struct TYPE_2__ {int bus_flags; } ;

/* Variables and functions */
 int E2BIG ; 
 int EINVAL ; 
 int EIO ; 
 int PCI_BUS_FLAGS_NO_MMRBC ; 
 int /*<<< orphan*/  PCI_CAP_ID_PCIX ; 
 scalar_t__ PCI_X_CMD ; 
 int PCI_X_CMD_MAX_READ ; 
 scalar_t__ PCI_X_STATUS ; 
 int PCI_X_STATUS_MAX_READ ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct pci_dev*,scalar_t__,int*) ; 
 scalar_t__ FUNC4 (struct pci_dev*,scalar_t__,int*) ; 
 scalar_t__ FUNC5 (struct pci_dev*,scalar_t__,int) ; 

int FUNC6(struct pci_dev *dev, int mmrbc)
{
	int cap;
	u32 stat, v, o;
	u16 cmd;

	if (mmrbc < 512 || mmrbc > 4096 || !FUNC1(mmrbc))
		return -EINVAL;

	v = FUNC0(mmrbc) - 10;

	cap = FUNC2(dev, PCI_CAP_ID_PCIX);
	if (!cap)
		return -EINVAL;

	if (FUNC3(dev, cap + PCI_X_STATUS, &stat))
		return -EINVAL;

	if (v > (stat & PCI_X_STATUS_MAX_READ) >> 21)
		return -E2BIG;

	if (FUNC4(dev, cap + PCI_X_CMD, &cmd))
		return -EINVAL;

	o = (cmd & PCI_X_CMD_MAX_READ) >> 2;
	if (o != v) {
		if (v > o && (dev->bus->bus_flags & PCI_BUS_FLAGS_NO_MMRBC))
			return -EIO;

		cmd &= ~PCI_X_CMD_MAX_READ;
		cmd |= v << 2;
		if (FUNC5(dev, cap + PCI_X_CMD, cmd))
			return -EIO;
	}
	return 0;
}