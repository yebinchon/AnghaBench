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
struct pci_dev {int pcie_mpss; scalar_t__ is_virtfn; } ;

/* Variables and functions */
 scalar_t__ PCIE_BUS_DEFAULT ; 
 scalar_t__ PCIE_BUS_TUNE_OFF ; 
 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 
 struct pci_dev* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,char*,int,...) ; 
 scalar_t__ pcie_bus_config ; 
 int FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*,int) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *dev)
{
	struct pci_dev *bridge = FUNC4(dev);
	int mps, mpss, p_mps, rc;

	if (!FUNC1(dev) || !bridge || !FUNC1(bridge))
		return;

	/* MPS and MRRS fields are of type 'RsvdP' for VFs, short-circuit out */
	if (dev->is_virtfn)
		return;

	mps = FUNC6(dev);
	p_mps = FUNC6(bridge);

	if (mps == p_mps)
		return;

	if (pcie_bus_config == PCIE_BUS_TUNE_OFF) {
		FUNC5(dev, "Max Payload Size %d, but upstream %s set to %d; if necessary, use \"pci=pcie_bus_safe\" and report a bug\n",
			 mps, FUNC2(bridge), p_mps);
		return;
	}

	/*
	 * Fancier MPS configuration is done later by
	 * pcie_bus_configure_settings()
	 */
	if (pcie_bus_config != PCIE_BUS_DEFAULT)
		return;

	mpss = 128 << dev->pcie_mpss;
	if (mpss < p_mps && FUNC3(bridge) == PCI_EXP_TYPE_ROOT_PORT) {
		FUNC7(bridge, mpss);
		FUNC0(dev, "Upstream bridge's Max Payload Size set to %d (was %d, max %d)\n",
			 mpss, p_mps, 128 << bridge->pcie_mpss);
		p_mps = FUNC6(bridge);
	}

	rc = FUNC7(dev, p_mps);
	if (rc) {
		FUNC5(dev, "can't set Max Payload Size to %d; if necessary, use \"pci=pcie_bus_safe\" and report a bug\n",
			 p_mps);
		return;
	}

	FUNC0(dev, "Max Payload Size set to %d (was %d, max %d)\n",
		 p_mps, mps, mpss);
}