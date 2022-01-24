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
struct pci_dev {int pcie_mpss; TYPE_1__* bus; } ;
struct TYPE_2__ {scalar_t__ self; } ;

/* Variables and functions */
 scalar_t__ PCIE_BUS_PERFORMANCE ; 
 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,char*) ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 
 scalar_t__ pcie_bus_config ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (struct pci_dev*,int) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *dev, int mps)
{
	int rc;

	if (pcie_bus_config == PCIE_BUS_PERFORMANCE) {
		mps = 128 << dev->pcie_mpss;

		if (FUNC2(dev) != PCI_EXP_TYPE_ROOT_PORT &&
		    dev->bus->self)

			/*
			 * For "Performance", the assumption is made that
			 * downstream communication will never be larger than
			 * the MRRS.  So, the MPS only needs to be configured
			 * for the upstream communication.  This being the case,
			 * walk from the top down and set the MPS of the child
			 * to that of the parent bus.
			 *
			 * Configure the device MPS with the smaller of the
			 * device MPSS or the bridge MPS (which is assumed to be
			 * properly configured at this point to the largest
			 * allowable MPS based on its parent bus).
			 */
			mps = FUNC0(mps, FUNC3(dev->bus->self));
	}

	rc = FUNC4(dev, mps);
	if (rc)
		FUNC1(dev, "Failed attempting to set the MPS\n");
}