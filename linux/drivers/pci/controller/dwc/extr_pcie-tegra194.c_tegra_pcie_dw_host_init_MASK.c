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
struct tegra_pcie_dw {int /*<<< orphan*/  core_clk; scalar_t__ pcie_cap_base; int /*<<< orphan*/  core_rst; } ;
struct pcie_port {int dummy; } ;
struct dw_pcie {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  APPL_CTRL ; 
 int APPL_CTRL_LTSSM_EN ; 
 int /*<<< orphan*/  APPL_DEBUG ; 
 int APPL_DEBUG_LTSSM_STATE_MASK ; 
 int APPL_DEBUG_LTSSM_STATE_SHIFT ; 
 int /*<<< orphan*/  APPL_LINK_STATUS ; 
 int APPL_LINK_STATUS_RDLH_LINK_UP ; 
 int PCI_DLF_CAP ; 
 int PCI_DLF_EXCHANGE_ENABLE ; 
 scalar_t__ PCI_EXP_LNKSTA ; 
 int PCI_EXP_LNKSTA_CLS ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_DLF ; 
 int FUNC0 (struct tegra_pcie_dw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_pcie_dw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct dw_pcie*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dw_pcie*,int) ; 
 int FUNC6 (struct dw_pcie*,scalar_t__) ; 
 scalar_t__ FUNC7 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC8 (struct dw_pcie*,int,int) ; 
 int /*<<< orphan*/ * pcie_gen_freq ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pcie_port*) ; 
 int /*<<< orphan*/  FUNC12 (struct pcie_port*) ; 
 struct dw_pcie* FUNC13 (struct pcie_port*) ; 
 struct tegra_pcie_dw* FUNC14 (struct dw_pcie*) ; 

__attribute__((used)) static int FUNC15(struct pcie_port *pp)
{
	struct dw_pcie *pci = FUNC13(pp);
	struct tegra_pcie_dw *pcie = FUNC14(pci);
	u32 val, tmp, offset, speed;

	FUNC12(pp);

	if (FUNC7(pci)) {
		/*
		 * There are some endpoints which can't get the link up if
		 * root port has Data Link Feature (DLF) enabled.
		 * Refer Spec rev 4.0 ver 1.0 sec 3.4.2 & 7.7.4 for more info
		 * on Scaled Flow Control and DLF.
		 * So, need to confirm that is indeed the case here and attempt
		 * link up once again with DLF disabled.
		 */
		val = FUNC0(pcie, APPL_DEBUG);
		val &= APPL_DEBUG_LTSSM_STATE_MASK;
		val >>= APPL_DEBUG_LTSSM_STATE_SHIFT;
		tmp = FUNC0(pcie, APPL_LINK_STATUS);
		tmp &= APPL_LINK_STATUS_RDLH_LINK_UP;
		if (!(val == 0x11 && !tmp)) {
			/* Link is down for all good reasons */
			return 0;
		}

		FUNC3(pci->dev, "Link is down in DLL");
		FUNC3(pci->dev, "Trying again with DLFE disabled\n");
		/* Disable LTSSM */
		val = FUNC0(pcie, APPL_CTRL);
		val &= ~APPL_CTRL_LTSSM_EN;
		FUNC1(pcie, val, APPL_CTRL);

		FUNC9(pcie->core_rst);
		FUNC10(pcie->core_rst);

		offset = FUNC4(pci, PCI_EXT_CAP_ID_DLF);
		val = FUNC5(pci, offset + PCI_DLF_CAP);
		val &= ~PCI_DLF_EXCHANGE_ENABLE;
		FUNC8(pci, offset, val);

		FUNC12(pp);

		if (FUNC7(pci))
			return 0;
	}

	speed = FUNC6(pci, pcie->pcie_cap_base + PCI_EXP_LNKSTA) &
		PCI_EXP_LNKSTA_CLS;
	FUNC2(pcie->core_clk, pcie_gen_freq[speed - 1]);

	FUNC11(pp);

	return 0;
}