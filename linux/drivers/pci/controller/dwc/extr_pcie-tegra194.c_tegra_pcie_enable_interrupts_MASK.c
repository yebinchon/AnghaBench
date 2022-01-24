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
struct tegra_pcie_dw {int dummy; } ;
struct pcie_port {int dummy; } ;
struct dw_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  APPL_INTR_STATUS_L0 ; 
 int /*<<< orphan*/  APPL_INTR_STATUS_L1_0_0 ; 
 int /*<<< orphan*/  APPL_INTR_STATUS_L1_1 ; 
 int /*<<< orphan*/  APPL_INTR_STATUS_L1_10 ; 
 int /*<<< orphan*/  APPL_INTR_STATUS_L1_11 ; 
 int /*<<< orphan*/  APPL_INTR_STATUS_L1_13 ; 
 int /*<<< orphan*/  APPL_INTR_STATUS_L1_14 ; 
 int /*<<< orphan*/  APPL_INTR_STATUS_L1_15 ; 
 int /*<<< orphan*/  APPL_INTR_STATUS_L1_17 ; 
 int /*<<< orphan*/  APPL_INTR_STATUS_L1_2 ; 
 int /*<<< orphan*/  APPL_INTR_STATUS_L1_3 ; 
 int /*<<< orphan*/  APPL_INTR_STATUS_L1_6 ; 
 int /*<<< orphan*/  APPL_INTR_STATUS_L1_7 ; 
 int /*<<< orphan*/  APPL_INTR_STATUS_L1_8_0 ; 
 int /*<<< orphan*/  APPL_INTR_STATUS_L1_9 ; 
 int /*<<< orphan*/  CONFIG_PCI_MSI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_pcie_dw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pcie_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcie_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcie_port*) ; 
 struct dw_pcie* FUNC5 (struct pcie_port*) ; 
 struct tegra_pcie_dw* FUNC6 (struct dw_pcie*) ; 

__attribute__((used)) static void FUNC7(struct pcie_port *pp)
{
	struct dw_pcie *pci = FUNC5(pp);
	struct tegra_pcie_dw *pcie = FUNC6(pci);

	/* Clear interrupt statuses before enabling interrupts */
	FUNC1(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L0);
	FUNC1(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_0_0);
	FUNC1(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_1);
	FUNC1(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_2);
	FUNC1(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_3);
	FUNC1(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_6);
	FUNC1(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_7);
	FUNC1(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_8_0);
	FUNC1(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_9);
	FUNC1(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_10);
	FUNC1(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_11);
	FUNC1(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_13);
	FUNC1(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_14);
	FUNC1(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_15);
	FUNC1(pcie, 0xFFFFFFFF, APPL_INTR_STATUS_L1_17);

	FUNC4(pp);
	FUNC2(pp);
	if (FUNC0(CONFIG_PCI_MSI))
		FUNC3(pp);
}