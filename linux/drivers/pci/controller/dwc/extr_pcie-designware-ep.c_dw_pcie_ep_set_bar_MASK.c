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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct pci_epf_bar {int barno; size_t size; int flags; int /*<<< orphan*/  phys_addr; } ;
struct pci_epc {int dummy; } ;
struct dw_pcie_ep {int dummy; } ;
struct dw_pcie {int dummy; } ;
typedef  enum pci_barno { ____Placeholder_pci_barno } pci_barno ;
typedef  enum dw_pcie_as_type { ____Placeholder_dw_pcie_as_type } dw_pcie_as_type ;

/* Variables and functions */
 int DW_PCIE_AS_IO ; 
 int DW_PCIE_AS_MEM ; 
 scalar_t__ PCI_BASE_ADDRESS_0 ; 
 int PCI_BASE_ADDRESS_MEM_TYPE_64 ; 
 int PCI_BASE_ADDRESS_SPACE ; 
 int /*<<< orphan*/  FUNC0 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_pcie*) ; 
 int FUNC2 (struct dw_pcie_ep*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_pcie*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dw_pcie*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct dw_pcie_ep* FUNC5 (struct pci_epc*) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 struct dw_pcie* FUNC7 (struct dw_pcie_ep*) ; 
 int /*<<< orphan*/  FUNC8 (size_t) ; 

__attribute__((used)) static int FUNC9(struct pci_epc *epc, u8 func_no,
			      struct pci_epf_bar *epf_bar)
{
	int ret;
	struct dw_pcie_ep *ep = FUNC5(epc);
	struct dw_pcie *pci = FUNC7(ep);
	enum pci_barno bar = epf_bar->barno;
	size_t size = epf_bar->size;
	int flags = epf_bar->flags;
	enum dw_pcie_as_type as_type;
	u32 reg = PCI_BASE_ADDRESS_0 + (4 * bar);

	if (!(flags & PCI_BASE_ADDRESS_SPACE))
		as_type = DW_PCIE_AS_MEM;
	else
		as_type = DW_PCIE_AS_IO;

	ret = FUNC2(ep, bar, epf_bar->phys_addr, as_type);
	if (ret)
		return ret;

	FUNC1(pci);

	FUNC4(pci, reg, FUNC6(size - 1));
	FUNC3(pci, reg, flags);

	if (flags & PCI_BASE_ADDRESS_MEM_TYPE_64) {
		FUNC4(pci, reg + 4, FUNC8(size - 1));
		FUNC3(pci, reg + 4, 0);
	}

	FUNC0(pci);

	return 0;
}