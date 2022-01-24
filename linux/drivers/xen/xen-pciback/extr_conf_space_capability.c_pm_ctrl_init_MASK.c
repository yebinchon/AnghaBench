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
 void* FUNC0 (int) ; 
 int PCI_PM_CTRL_PME_ENABLE ; 
 int FUNC1 (struct pci_dev*,int,int*) ; 
 int FUNC2 (struct pci_dev*,int,int) ; 

__attribute__((used)) static void *FUNC3(struct pci_dev *dev, int offset)
{
	int err;
	u16 value;

	err = FUNC1(dev, offset, &value);
	if (err)
		goto out;

	if (value & PCI_PM_CTRL_PME_ENABLE) {
		value &= ~PCI_PM_CTRL_PME_ENABLE;
		err = FUNC2(dev, offset, value);
	}

out:
	return FUNC0(err);
}