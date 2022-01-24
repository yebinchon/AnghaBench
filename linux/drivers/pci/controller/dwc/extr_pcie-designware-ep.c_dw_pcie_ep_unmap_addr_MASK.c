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
typedef  int /*<<< orphan*/  u32 ;
struct pci_epc {int dummy; } ;
struct dw_pcie_ep {int /*<<< orphan*/  ob_window_map; } ;
struct dw_pcie {int dummy; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DW_PCIE_REGION_OUTBOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dw_pcie_ep*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct dw_pcie_ep* FUNC3 (struct pci_epc*) ; 
 struct dw_pcie* FUNC4 (struct dw_pcie_ep*) ; 

__attribute__((used)) static void FUNC5(struct pci_epc *epc, u8 func_no,
				  phys_addr_t addr)
{
	int ret;
	u32 atu_index;
	struct dw_pcie_ep *ep = FUNC3(epc);
	struct dw_pcie *pci = FUNC4(ep);

	ret = FUNC2(ep, addr, &atu_index);
	if (ret < 0)
		return;

	FUNC1(pci, atu_index, DW_PCIE_REGION_OUTBOUND);
	FUNC0(atu_index, ep->ob_window_map);
}