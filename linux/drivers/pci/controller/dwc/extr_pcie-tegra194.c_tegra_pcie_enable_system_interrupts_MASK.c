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
typedef  int u16 ;
struct tegra_pcie_dw {int init_link_width; scalar_t__ pcie_cap_base; int /*<<< orphan*/  pci; scalar_t__ enable_cdm_check; } ;
struct pcie_port {int dummy; } ;
struct dw_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  APPL_INTR_EN_L0_0 ; 
 int /*<<< orphan*/  APPL_INTR_EN_L0_0_CDM_REG_CHK_INT_EN ; 
 int /*<<< orphan*/  APPL_INTR_EN_L0_0_LINK_STATE_INT_EN ; 
 int /*<<< orphan*/  APPL_INTR_EN_L1_0_0 ; 
 int /*<<< orphan*/  APPL_INTR_EN_L1_0_0_LINK_REQ_RST_NOT_INT_EN ; 
 int /*<<< orphan*/  APPL_INTR_EN_L1_18 ; 
 int /*<<< orphan*/  APPL_INTR_EN_L1_18_CDM_REG_CHK_CMP_ERR ; 
 int /*<<< orphan*/  APPL_INTR_EN_L1_18_CDM_REG_CHK_LOGIC_ERR ; 
 scalar_t__ PCI_EXP_LNKCTL ; 
 int PCI_EXP_LNKCTL_LBMIE ; 
 scalar_t__ PCI_EXP_LNKSTA ; 
 int PCI_EXP_LNKSTA_NLW ; 
 int PCI_EXP_LNKSTA_NLW_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_pcie_dw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_pcie_dw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 struct dw_pcie* FUNC4 (struct pcie_port*) ; 
 struct tegra_pcie_dw* FUNC5 (struct dw_pcie*) ; 

__attribute__((used)) static void FUNC6(struct pcie_port *pp)
{
	struct dw_pcie *pci = FUNC4(pp);
	struct tegra_pcie_dw *pcie = FUNC5(pci);
	u32 val;
	u16 val_w;

	val = FUNC0(pcie, APPL_INTR_EN_L0_0);
	val |= APPL_INTR_EN_L0_0_LINK_STATE_INT_EN;
	FUNC1(pcie, val, APPL_INTR_EN_L0_0);

	val = FUNC0(pcie, APPL_INTR_EN_L1_0_0);
	val |= APPL_INTR_EN_L1_0_0_LINK_REQ_RST_NOT_INT_EN;
	FUNC1(pcie, val, APPL_INTR_EN_L1_0_0);

	if (pcie->enable_cdm_check) {
		val = FUNC0(pcie, APPL_INTR_EN_L0_0);
		val |= APPL_INTR_EN_L0_0_CDM_REG_CHK_INT_EN;
		FUNC1(pcie, val, APPL_INTR_EN_L0_0);

		val = FUNC0(pcie, APPL_INTR_EN_L1_18);
		val |= APPL_INTR_EN_L1_18_CDM_REG_CHK_CMP_ERR;
		val |= APPL_INTR_EN_L1_18_CDM_REG_CHK_LOGIC_ERR;
		FUNC1(pcie, val, APPL_INTR_EN_L1_18);
	}

	val_w = FUNC2(&pcie->pci, pcie->pcie_cap_base +
				  PCI_EXP_LNKSTA);
	pcie->init_link_width = (val_w & PCI_EXP_LNKSTA_NLW) >>
				PCI_EXP_LNKSTA_NLW_SHIFT;

	val_w = FUNC2(&pcie->pci, pcie->pcie_cap_base +
				  PCI_EXP_LNKCTL);
	val_w |= PCI_EXP_LNKCTL_LBMIE;
	FUNC3(&pcie->pci, pcie->pcie_cap_base + PCI_EXP_LNKCTL,
			   val_w);
}