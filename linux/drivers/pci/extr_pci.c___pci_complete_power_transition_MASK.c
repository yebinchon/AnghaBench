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
struct pci_dev {int /*<<< orphan*/  subordinate; } ;
typedef  scalar_t__ pci_power_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PCI_D0 ; 
 scalar_t__ PCI_D3cold ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (struct pci_dev*,scalar_t__) ; 

int FUNC2(struct pci_dev *dev, pci_power_t state)
{
	int ret;

	if (state <= PCI_D0)
		return -EINVAL;
	ret = FUNC1(dev, state);
	/* Power off the bridge may power off the whole hierarchy */
	if (!ret && state == PCI_D3cold)
		FUNC0(dev->subordinate, PCI_D3cold);
	return ret;
}