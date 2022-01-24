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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ PCI_EXP_DEVSTA ; 
 int /*<<< orphan*/  PCI_EXP_DEVSTA_TRPND ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 scalar_t__ FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC3(struct pci_dev *dev)
{
	if (!FUNC0(dev))
		return 1;

	return FUNC2(dev, FUNC1(dev) + PCI_EXP_DEVSTA,
				    PCI_EXP_DEVSTA_TRPND);
}