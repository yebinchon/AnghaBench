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
struct rockchip_pcie {int dummy; } ;
struct rockchip_pcie_ep {struct rockchip_pcie rockchip; } ;
struct pci_epf_bar {int barno; } ;
struct pci_epc {int dummy; } ;
typedef  enum pci_barno { ____Placeholder_pci_barno } pci_barno ;

/* Variables and functions */
 int BAR_4 ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_DISABLED ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (int) ; 
 struct rockchip_pcie_ep* FUNC7 (struct pci_epc*) ; 
 int FUNC8 (struct rockchip_pcie*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rockchip_pcie*,int,int) ; 

__attribute__((used)) static void FUNC10(struct pci_epc *epc, u8 fn,
				       struct pci_epf_bar *epf_bar)
{
	struct rockchip_pcie_ep *ep = FUNC7(epc);
	struct rockchip_pcie *rockchip = &ep->rockchip;
	u32 reg, cfg, b, ctrl;
	enum pci_barno bar = epf_bar->barno;

	if (bar < BAR_4) {
		reg = FUNC2(fn);
		b = bar;
	} else {
		reg = FUNC3(fn);
		b = bar - BAR_4;
	}

	ctrl = ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_DISABLED;
	cfg = FUNC8(rockchip, reg);
	cfg &= ~(FUNC4(b) |
		 FUNC6(b));
	cfg |= FUNC5(b, ctrl);

	FUNC9(rockchip, cfg, reg);
	FUNC9(rockchip, 0x0,
			    FUNC0(fn, bar));
	FUNC9(rockchip, 0x0,
			    FUNC1(fn, bar));
}