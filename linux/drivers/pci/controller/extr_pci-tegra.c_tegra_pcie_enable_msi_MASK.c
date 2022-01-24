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
struct tegra_pcie_soc {int msi_base_shift; } ;
struct tegra_msi {int phys; } ;
struct tegra_pcie {struct tegra_msi msi; struct tegra_pcie_soc* soc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFI_INTR_MASK ; 
 int AFI_INTR_MASK_MSI_MASK ; 
 int /*<<< orphan*/  AFI_MSI_AXI_BAR_ST ; 
 int /*<<< orphan*/  AFI_MSI_BAR_SZ ; 
 int /*<<< orphan*/  AFI_MSI_EN_VEC0 ; 
 int /*<<< orphan*/  AFI_MSI_EN_VEC1 ; 
 int /*<<< orphan*/  AFI_MSI_EN_VEC2 ; 
 int /*<<< orphan*/  AFI_MSI_EN_VEC3 ; 
 int /*<<< orphan*/  AFI_MSI_EN_VEC4 ; 
 int /*<<< orphan*/  AFI_MSI_EN_VEC5 ; 
 int /*<<< orphan*/  AFI_MSI_EN_VEC6 ; 
 int /*<<< orphan*/  AFI_MSI_EN_VEC7 ; 
 int /*<<< orphan*/  AFI_MSI_FPCI_BAR_ST ; 
 int FUNC0 (struct tegra_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_pcie*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct tegra_pcie *pcie)
{
	const struct tegra_pcie_soc *soc = pcie->soc;
	struct tegra_msi *msi = &pcie->msi;
	u32 reg;

	FUNC1(pcie, msi->phys >> soc->msi_base_shift, AFI_MSI_FPCI_BAR_ST);
	FUNC1(pcie, msi->phys, AFI_MSI_AXI_BAR_ST);
	/* this register is in 4K increments */
	FUNC1(pcie, 1, AFI_MSI_BAR_SZ);

	/* enable all MSI vectors */
	FUNC1(pcie, 0xffffffff, AFI_MSI_EN_VEC0);
	FUNC1(pcie, 0xffffffff, AFI_MSI_EN_VEC1);
	FUNC1(pcie, 0xffffffff, AFI_MSI_EN_VEC2);
	FUNC1(pcie, 0xffffffff, AFI_MSI_EN_VEC3);
	FUNC1(pcie, 0xffffffff, AFI_MSI_EN_VEC4);
	FUNC1(pcie, 0xffffffff, AFI_MSI_EN_VEC5);
	FUNC1(pcie, 0xffffffff, AFI_MSI_EN_VEC6);
	FUNC1(pcie, 0xffffffff, AFI_MSI_EN_VEC7);

	/* and unmask the MSI interrupt */
	reg = FUNC0(pcie, AFI_INTR_MASK);
	reg |= AFI_INTR_MASK_MSI_MASK;
	FUNC1(pcie, reg, AFI_INTR_MASK);
}