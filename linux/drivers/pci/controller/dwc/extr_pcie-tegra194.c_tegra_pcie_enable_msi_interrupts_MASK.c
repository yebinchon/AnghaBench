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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_pcie_dw {int dummy; } ;
struct pcie_port {int dummy; } ;
struct dw_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  APPL_INTR_EN_L0_0 ; 
 int /*<<< orphan*/  APPL_INTR_EN_L0_0_MSI_RCV_INT_EN ; 
 int /*<<< orphan*/  APPL_INTR_EN_L0_0_SYS_MSI_INTR_EN ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_pcie_dw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_pcie_dw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pcie_port*) ; 
 struct dw_pcie* FUNC3 (struct pcie_port*) ; 
 struct tegra_pcie_dw* FUNC4 (struct dw_pcie*) ; 

__attribute__((used)) static void FUNC5(struct pcie_port *pp)
{
	struct dw_pcie *pci = FUNC3(pp);
	struct tegra_pcie_dw *pcie = FUNC4(pci);
	u32 val;

	FUNC2(pp);

	/* Enable MSI interrupt generation */
	val = FUNC0(pcie, APPL_INTR_EN_L0_0);
	val |= APPL_INTR_EN_L0_0_SYS_MSI_INTR_EN;
	val |= APPL_INTR_EN_L0_0_MSI_RCV_INT_EN;
	FUNC1(pcie, val, APPL_INTR_EN_L0_0);
}