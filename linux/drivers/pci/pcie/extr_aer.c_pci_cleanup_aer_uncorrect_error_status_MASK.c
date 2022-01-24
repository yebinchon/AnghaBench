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
struct pci_dev {int aer_cap; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ PCI_ERR_UNCOR_SEVER ; 
 scalar_t__ PCI_ERR_UNCOR_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,int) ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 

int FUNC3(struct pci_dev *dev)
{
	int pos;
	u32 status, sev;

	pos = dev->aer_cap;
	if (!pos)
		return -EIO;

	if (FUNC2(dev))
		return -EIO;

	/* Clear status bits for ERR_NONFATAL errors only */
	FUNC0(dev, pos + PCI_ERR_UNCOR_STATUS, &status);
	FUNC0(dev, pos + PCI_ERR_UNCOR_SEVER, &sev);
	status &= ~sev;
	if (status)
		FUNC1(dev, pos + PCI_ERR_UNCOR_STATUS, status);

	return 0;
}