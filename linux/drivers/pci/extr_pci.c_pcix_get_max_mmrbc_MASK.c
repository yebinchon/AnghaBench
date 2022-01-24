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
typedef  int u32 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PCI_CAP_ID_PCIX ; 
 scalar_t__ PCI_X_STATUS ; 
 int PCI_X_STATUS_MAX_READ ; 
 int FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct pci_dev*,scalar_t__,int*) ; 

int FUNC2(struct pci_dev *dev)
{
	int cap;
	u32 stat;

	cap = FUNC0(dev, PCI_CAP_ID_PCIX);
	if (!cap)
		return -EINVAL;

	if (FUNC1(dev, cap + PCI_X_STATUS, &stat))
		return -EINVAL;

	return 512 << ((stat & PCI_X_STATUS_MAX_READ) >> 21);
}