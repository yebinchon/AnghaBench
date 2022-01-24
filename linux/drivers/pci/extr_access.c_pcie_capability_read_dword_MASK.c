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
typedef  scalar_t__ u32 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int PCI_EXP_SLTSTA ; 
 scalar_t__ PCI_EXP_SLTSTA_PDS ; 
 scalar_t__ FUNC0 (struct pci_dev*) ; 
 scalar_t__ FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pci_dev*,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC3 (struct pci_dev*,int) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 

int FUNC5(struct pci_dev *dev, int pos, u32 *val)
{
	int ret;

	*val = 0;
	if (pos & 3)
		return -EINVAL;

	if (FUNC3(dev, pos)) {
		ret = FUNC2(dev, FUNC1(dev) + pos, val);
		/*
		 * Reset *val to 0 if pci_read_config_dword() fails, it may
		 * have been written as 0xFFFFFFFF if hardware error happens
		 * during pci_read_config_dword().
		 */
		if (ret)
			*val = 0;
		return ret;
	}

	if (FUNC0(dev) && FUNC4(dev) &&
	    pos == PCI_EXP_SLTSTA)
		*val = PCI_EXP_SLTSTA_PDS;

	return 0;
}