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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PCIE_BUS_PERFORMANCE ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL_READRQ ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ pcie_bus_config ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct pci_dev*) ; 

int FUNC4(struct pci_dev *dev, int rq)
{
	u16 v;

	if (rq < 128 || rq > 4096 || !FUNC1(rq))
		return -EINVAL;

	/*
	 * If using the "performance" PCIe config, we clamp the read rq
	 * size to the max packet size to keep the host bridge from
	 * generating requests larger than we can cope with.
	 */
	if (pcie_bus_config == PCIE_BUS_PERFORMANCE) {
		int mps = FUNC3(dev);

		if (mps < rq)
			rq = mps;
	}

	v = (FUNC0(rq) - 8) << 12;

	return FUNC2(dev, PCI_EXP_DEVCTL,
						  PCI_EXP_DEVCTL_READRQ, v);
}