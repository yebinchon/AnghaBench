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
typedef  int u16 ;
struct pci_dev {int aer_cap; } ;

/* Variables and functions */
 int PCIE_PORT_SERVICE_AER ; 
 int PCIE_PORT_SERVICE_BWNOTIF ; 
 int PCIE_PORT_SERVICE_DPC ; 
 int PCIE_PORT_SERVICE_HP ; 
 int PCIE_PORT_SERVICE_PME ; 
 int PCI_ERR_ROOT_AER_IRQ ; 
 int PCI_ERR_ROOT_STATUS ; 
 int PCI_EXP_DPC_CAP ; 
 int PCI_EXP_DPC_IRQ ; 
 int /*<<< orphan*/  PCI_EXP_FLAGS ; 
 int PCI_EXP_FLAGS_IRQ ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_DPC ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *dev, int mask,
				u32 *pme, u32 *aer, u32 *dpc)
{
	u32 nvec = 0, pos;
	u16 reg16;

	/*
	 * The Interrupt Message Number indicates which vector is used, i.e.,
	 * the MSI-X table entry or the MSI offset between the base Message
	 * Data and the generated interrupt message.  See PCIe r3.1, sec
	 * 7.8.2, 7.10.10, 7.31.2.
	 */

	if (mask & (PCIE_PORT_SERVICE_PME | PCIE_PORT_SERVICE_HP |
		    PCIE_PORT_SERVICE_BWNOTIF)) {
		FUNC4(dev, PCI_EXP_FLAGS, &reg16);
		*pme = (reg16 & PCI_EXP_FLAGS_IRQ) >> 9;
		nvec = *pme + 1;
	}

#ifdef CONFIG_PCIEAER
	if (mask & PCIE_PORT_SERVICE_AER) {
		u32 reg32;

		pos = dev->aer_cap;
		if (pos) {
			pci_read_config_dword(dev, pos + PCI_ERR_ROOT_STATUS,
					      &reg32);
			*aer = (reg32 & PCI_ERR_ROOT_AER_IRQ) >> 27;
			nvec = max(nvec, *aer + 1);
		}
	}
#endif

	if (mask & PCIE_PORT_SERVICE_DPC) {
		pos = FUNC1(dev, PCI_EXT_CAP_ID_DPC);
		if (pos) {
			FUNC3(dev, pos + PCI_EXP_DPC_CAP,
					     &reg16);
			*dpc = reg16 & PCI_EXP_DPC_IRQ;
			nvec = FUNC0(nvec, *dpc + 1);
		}
	}

	return nvec;
}