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
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct pci_epc {TYPE_1__* mem; } ;
struct dw_pcie_ep {int msi_cap; int /*<<< orphan*/  msi_mem_phys; scalar_t__ msi_mem; struct pci_epc* epc; } ;
struct dw_pcie {int dummy; } ;
struct TYPE_2__ {int page_size; } ;

/* Variables and functions */
 int EINVAL ; 
 int PCI_MSI_ADDRESS_HI ; 
 int PCI_MSI_ADDRESS_LO ; 
 int PCI_MSI_DATA_32 ; 
 int PCI_MSI_DATA_64 ; 
 int PCI_MSI_FLAGS ; 
 int PCI_MSI_FLAGS_64BIT ; 
 int FUNC0 (struct pci_epc*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_epc*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dw_pcie*,int) ; 
 int FUNC3 (struct dw_pcie*,int) ; 
 struct dw_pcie* FUNC4 (struct dw_pcie_ep*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

int FUNC6(struct dw_pcie_ep *ep, u8 func_no,
			     u8 interrupt_num)
{
	struct dw_pcie *pci = FUNC4(ep);
	struct pci_epc *epc = ep->epc;
	unsigned int aligned_offset;
	u16 msg_ctrl, msg_data;
	u32 msg_addr_lower, msg_addr_upper, reg;
	u64 msg_addr;
	bool has_upper;
	int ret;

	if (!ep->msi_cap)
		return -EINVAL;

	/* Raise MSI per the PCI Local Bus Specification Revision 3.0, 6.8.1. */
	reg = ep->msi_cap + PCI_MSI_FLAGS;
	msg_ctrl = FUNC3(pci, reg);
	has_upper = !!(msg_ctrl & PCI_MSI_FLAGS_64BIT);
	reg = ep->msi_cap + PCI_MSI_ADDRESS_LO;
	msg_addr_lower = FUNC2(pci, reg);
	if (has_upper) {
		reg = ep->msi_cap + PCI_MSI_ADDRESS_HI;
		msg_addr_upper = FUNC2(pci, reg);
		reg = ep->msi_cap + PCI_MSI_DATA_64;
		msg_data = FUNC3(pci, reg);
	} else {
		msg_addr_upper = 0;
		reg = ep->msi_cap + PCI_MSI_DATA_32;
		msg_data = FUNC3(pci, reg);
	}
	aligned_offset = msg_addr_lower & (epc->mem->page_size - 1);
	msg_addr = ((u64)msg_addr_upper) << 32 |
			(msg_addr_lower & ~aligned_offset);
	ret = FUNC0(epc, func_no, ep->msi_mem_phys, msg_addr,
				  epc->mem->page_size);
	if (ret)
		return ret;

	FUNC5(msg_data | (interrupt_num - 1), ep->msi_mem + aligned_offset);

	FUNC1(epc, func_no, ep->msi_mem_phys);

	return 0;
}