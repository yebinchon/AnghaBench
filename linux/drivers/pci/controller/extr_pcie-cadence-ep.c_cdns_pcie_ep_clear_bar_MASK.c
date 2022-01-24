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
typedef  int u32 ;
struct pci_epf_bar {int barno; } ;
struct pci_epc {int dummy; } ;
struct cdns_pcie {int dummy; } ;
struct cdns_pcie_ep {struct cdns_pcie pcie; } ;
typedef  enum pci_barno { ____Placeholder_pci_barno } pci_barno ;

/* Variables and functions */
 int BAR_4 ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int CDNS_PCIE_LM_BAR_CFG_CTRL_DISABLED ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (struct cdns_pcie*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct cdns_pcie*,int,int) ; 
 struct cdns_pcie_ep* FUNC9 (struct pci_epc*) ; 

__attribute__((used)) static void FUNC10(struct pci_epc *epc, u8 fn,
				   struct pci_epf_bar *epf_bar)
{
	struct cdns_pcie_ep *ep = FUNC9(epc);
	struct cdns_pcie *pcie = &ep->pcie;
	enum pci_barno bar = epf_bar->barno;
	u32 reg, cfg, b, ctrl;

	if (bar < BAR_4) {
		reg = FUNC2(fn);
		b = bar;
	} else {
		reg = FUNC3(fn);
		b = bar - BAR_4;
	}

	ctrl = CDNS_PCIE_LM_BAR_CFG_CTRL_DISABLED;
	cfg = FUNC7(pcie, reg);
	cfg &= ~(FUNC4(b) |
		 FUNC6(b));
	cfg |= FUNC5(b, ctrl);
	FUNC8(pcie, reg, cfg);

	FUNC8(pcie, FUNC0(fn, bar), 0);
	FUNC8(pcie, FUNC1(fn, bar), 0);
}