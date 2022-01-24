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
struct pci_epf_bar {int barno; int /*<<< orphan*/  flags; } ;
struct pci_epc {int dummy; } ;
struct dw_pcie_ep {int /*<<< orphan*/  ib_window_map; int /*<<< orphan*/ * bar_to_atu; } ;
struct dw_pcie {int dummy; } ;
typedef  enum pci_barno { ____Placeholder_pci_barno } pci_barno ;

/* Variables and functions */
 int /*<<< orphan*/  DW_PCIE_REGION_INBOUND ; 
 int /*<<< orphan*/  FUNC0 (struct dw_pcie*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dw_pcie_ep* FUNC3 (struct pci_epc*) ; 
 struct dw_pcie* FUNC4 (struct dw_pcie_ep*) ; 

__attribute__((used)) static void FUNC5(struct pci_epc *epc, u8 func_no,
				 struct pci_epf_bar *epf_bar)
{
	struct dw_pcie_ep *ep = FUNC3(epc);
	struct dw_pcie *pci = FUNC4(ep);
	enum pci_barno bar = epf_bar->barno;
	u32 atu_index = ep->bar_to_atu[bar];

	FUNC0(pci, bar, epf_bar->flags);

	FUNC2(pci, atu_index, DW_PCIE_REGION_INBOUND);
	FUNC1(atu_index, ep->ib_window_map);
}