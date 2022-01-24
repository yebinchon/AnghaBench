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
struct pci_dev {scalar_t__ is_virtfn; int /*<<< orphan*/  devfn; } ;

/* Variables and functions */
 scalar_t__ PCI_EXP_TYPE_ENDPOINT ; 
 scalar_t__ PCI_EXP_TYPE_LEG_END ; 
 scalar_t__ PCI_EXP_TYPE_UPSTREAM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 

void FUNC4(struct pci_dev *dev)
{
	if (!FUNC2(dev))
		return;

	/* Look from the device up to avoid downstream ports with no devices */
	if ((FUNC3(dev) != PCI_EXP_TYPE_ENDPOINT) &&
	    (FUNC3(dev) != PCI_EXP_TYPE_LEG_END) &&
	    (FUNC3(dev) != PCI_EXP_TYPE_UPSTREAM))
		return;

	/* Multi-function PCIe devices share the same link/status */
	if (FUNC0(dev->devfn) != 0 || dev->is_virtfn)
		return;

	/* Print link status only if the device is constrained by the fabric */
	FUNC1(dev, false);
}