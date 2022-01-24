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
struct device {int dummy; } ;
struct pci_dev {scalar_t__ current_state; struct device dev; } ;
typedef  scalar_t__ pci_power_t ;

/* Variables and functions */
 scalar_t__ PCI_D3cold ; 
 scalar_t__ PCI_D3hot ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

bool FUNC4(struct pci_dev *pci_dev)
{
	struct device *dev = &pci_dev->dev;
	pci_power_t target_state;

	if (!FUNC3(dev) || FUNC2(pci_dev))
		return true;

	target_state = FUNC1(pci_dev, FUNC0(dev));

	/*
	 * If the earlier platform check has not triggered, D3cold is just power
	 * removal on top of D3hot, so no need to resume the device in that
	 * case.
	 */
	return target_state != pci_dev->current_state &&
		target_state != PCI_D3cold &&
		pci_dev->current_state != PCI_D3hot;
}