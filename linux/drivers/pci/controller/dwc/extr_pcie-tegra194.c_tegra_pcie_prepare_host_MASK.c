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
struct tegra_pcie_dw {int max_speed; int num_lanes; int /*<<< orphan*/  core_clk; scalar_t__ update_fc_fixup; scalar_t__ pcie_cap_base; } ;
struct pcie_port {int dummy; } ;
struct dw_pcie {int dummy; } ;

/* Variables and functions */
 int AMBA_ERROR_RESPONSE_CRS_MASK ; 
 int AMBA_ERROR_RESPONSE_CRS_OKAY_FFFF0001 ; 
 int AMBA_ERROR_RESPONSE_CRS_SHIFT ; 
 int /*<<< orphan*/  APPL_CTRL ; 
 int APPL_CTRL_LTSSM_EN ; 
 int /*<<< orphan*/  APPL_PINMUX ; 
 int APPL_PINMUX_PEX_RST ; 
 int CFG_PREF_MEM_LIMIT_BASE_MEM_DECODE ; 
 int CFG_PREF_MEM_LIMIT_BASE_MEM_LIMIT_DECODE ; 
 int CFG_TIMER_CTRL_ACK_NAK_SHIFT ; 
 scalar_t__ CFG_TIMER_CTRL_MAX_FUNC_NUM_OFF ; 
 int EINVAL ; 
 int FTS_MASK ; 
 int FTS_VAL ; 
 scalar_t__ GEN3_RELATED_OFF ; 
 int GEN3_RELATED_OFF_GEN3_ZRXDC_NONCOMPL ; 
 int /*<<< orphan*/  GEN4_CORE_CLK_FREQ ; 
 int IO_BASE_IO_DECODE ; 
 int IO_BASE_IO_DECODE_BIT8 ; 
 int N_FTS_MASK ; 
 int N_FTS_SHIFT ; 
 int N_FTS_VAL ; 
 scalar_t__ PCI_BASE_ADDRESS_0 ; 
 scalar_t__ PCI_EXP_LNKCAP ; 
 int PCI_EXP_LNKCAP_MLW ; 
 int PCI_EXP_LNKCAP_SLS ; 
 int PCI_EXP_LNKSTA_NLW_SHIFT ; 
 scalar_t__ PCI_IO_BASE ; 
 scalar_t__ PCI_PREF_MEMORY_BASE ; 
 scalar_t__ PORT_LOGIC_ACK_F_ASPM_CTRL ; 
 scalar_t__ PORT_LOGIC_AMBA_ERROR_RESPONSE_DEFAULT ; 
 scalar_t__ PORT_LOGIC_GEN2_CTRL ; 
 int FUNC0 (struct tegra_pcie_dw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_pcie_dw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_pcie_dw*) ; 
 int FUNC4 (struct dw_pcie*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct pcie_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct dw_pcie*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tegra_pcie_dw*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 struct dw_pcie* FUNC9 (struct pcie_port*) ; 
 struct tegra_pcie_dw* FUNC10 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 

__attribute__((used)) static void FUNC12(struct pcie_port *pp)
{
	struct dw_pcie *pci = FUNC9(pp);
	struct tegra_pcie_dw *pcie = FUNC10(pci);
	u32 val;

	val = FUNC4(pci, PCI_IO_BASE);
	val &= ~(IO_BASE_IO_DECODE | IO_BASE_IO_DECODE_BIT8);
	FUNC6(pci, PCI_IO_BASE, val);

	val = FUNC4(pci, PCI_PREF_MEMORY_BASE);
	val |= CFG_PREF_MEM_LIMIT_BASE_MEM_DECODE;
	val |= CFG_PREF_MEM_LIMIT_BASE_MEM_LIMIT_DECODE;
	FUNC6(pci, PCI_PREF_MEMORY_BASE, val);

	FUNC6(pci, PCI_BASE_ADDRESS_0, 0);

	/* Configure FTS */
	val = FUNC4(pci, PORT_LOGIC_ACK_F_ASPM_CTRL);
	val &= ~(N_FTS_MASK << N_FTS_SHIFT);
	val |= N_FTS_VAL << N_FTS_SHIFT;
	FUNC6(pci, PORT_LOGIC_ACK_F_ASPM_CTRL, val);

	val = FUNC4(pci, PORT_LOGIC_GEN2_CTRL);
	val &= ~FTS_MASK;
	val |= FTS_VAL;
	FUNC6(pci, PORT_LOGIC_GEN2_CTRL, val);

	/* Enable as 0xFFFF0001 response for CRS */
	val = FUNC4(pci, PORT_LOGIC_AMBA_ERROR_RESPONSE_DEFAULT);
	val &= ~(AMBA_ERROR_RESPONSE_CRS_MASK << AMBA_ERROR_RESPONSE_CRS_SHIFT);
	val |= (AMBA_ERROR_RESPONSE_CRS_OKAY_FFFF0001 <<
		AMBA_ERROR_RESPONSE_CRS_SHIFT);
	FUNC6(pci, PORT_LOGIC_AMBA_ERROR_RESPONSE_DEFAULT, val);

	/* Configure Max Speed from DT */
	if (pcie->max_speed && pcie->max_speed != -EINVAL) {
		val = FUNC4(pci, pcie->pcie_cap_base +
					PCI_EXP_LNKCAP);
		val &= ~PCI_EXP_LNKCAP_SLS;
		val |= pcie->max_speed;
		FUNC6(pci, pcie->pcie_cap_base + PCI_EXP_LNKCAP,
				   val);
	}

	/* Configure Max lane width from DT */
	val = FUNC4(pci, pcie->pcie_cap_base + PCI_EXP_LNKCAP);
	val &= ~PCI_EXP_LNKCAP_MLW;
	val |= (pcie->num_lanes << PCI_EXP_LNKSTA_NLW_SHIFT);
	FUNC6(pci, pcie->pcie_cap_base + PCI_EXP_LNKCAP, val);

	FUNC3(pcie);

	FUNC7(pcie);

	val = FUNC4(pci, GEN3_RELATED_OFF);
	val &= ~GEN3_RELATED_OFF_GEN3_ZRXDC_NONCOMPL;
	FUNC6(pci, GEN3_RELATED_OFF, val);

	if (pcie->update_fc_fixup) {
		val = FUNC4(pci, CFG_TIMER_CTRL_MAX_FUNC_NUM_OFF);
		val |= 0x1 << CFG_TIMER_CTRL_ACK_NAK_SHIFT;
		FUNC6(pci, CFG_TIMER_CTRL_MAX_FUNC_NUM_OFF, val);
	}

	FUNC5(pp);

	FUNC2(pcie->core_clk, GEN4_CORE_CLK_FREQ);

	/* Assert RST */
	val = FUNC0(pcie, APPL_PINMUX);
	val &= ~APPL_PINMUX_PEX_RST;
	FUNC1(pcie, val, APPL_PINMUX);

	FUNC11(100, 200);

	/* Enable LTSSM */
	val = FUNC0(pcie, APPL_CTRL);
	val |= APPL_CTRL_LTSSM_EN;
	FUNC1(pcie, val, APPL_CTRL);

	/* De-assert RST */
	val = FUNC0(pcie, APPL_PINMUX);
	val |= APPL_PINMUX_PEX_RST;
	FUNC1(pcie, val, APPL_PINMUX);

	FUNC8(100);
}