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
typedef  int u16 ;
struct pci_dev {int current_state; int /*<<< orphan*/  enable_cnt; TYPE_1__* resource; scalar_t__ pm_cap; } ;
struct TYPE_2__ {unsigned long flags; } ;

/* Variables and functions */
 int DEVICE_COUNT_RESOURCE ; 
 int PCI_BRIDGE_RESOURCES ; 
 scalar_t__ PCI_PM_CTRL ; 
 int PCI_PM_CTRL_STATE_MASK ; 
 int PCI_ROM_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,scalar_t__,int*) ; 
 struct pci_dev* FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC6(struct pci_dev *dev, unsigned long flags)
{
	struct pci_dev *bridge;
	int err;
	int i, bars = 0;

	/*
	 * Power state could be unknown at this point, either due to a fresh
	 * boot or a device removal call.  So get the current power state
	 * so that things like MSI message writing will behave as expected
	 * (e.g. if the device really is in D0 at enable time).
	 */
	if (dev->pm_cap) {
		u16 pmcsr;
		FUNC4(dev, dev->pm_cap + PCI_PM_CTRL, &pmcsr);
		dev->current_state = (pmcsr & PCI_PM_CTRL_STATE_MASK);
	}

	if (FUNC1(&dev->enable_cnt) > 1)
		return 0;		/* already enabled */

	bridge = FUNC5(dev);
	if (bridge)
		FUNC3(bridge);

	/* only skip sriov related */
	for (i = 0; i <= PCI_ROM_RESOURCE; i++)
		if (dev->resource[i].flags & flags)
			bars |= (1 << i);
	for (i = PCI_BRIDGE_RESOURCES; i < DEVICE_COUNT_RESOURCE; i++)
		if (dev->resource[i].flags & flags)
			bars |= (1 << i);

	err = FUNC2(dev, bars);
	if (err < 0)
		FUNC0(&dev->enable_cnt);
	return err;
}