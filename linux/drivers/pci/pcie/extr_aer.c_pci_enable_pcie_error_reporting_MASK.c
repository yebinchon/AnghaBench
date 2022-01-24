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
struct pci_dev {int /*<<< orphan*/  aer_cap; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  PCI_EXP_AER_FLAGS ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL ; 
 scalar_t__ FUNC0 (struct pci_dev*) ; 
 int FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct pci_dev *dev)
{
	if (FUNC0(dev))
		return -EIO;

	if (!dev->aer_cap)
		return -EIO;

	return FUNC1(dev, PCI_EXP_DEVCTL, PCI_EXP_AER_FLAGS);
}