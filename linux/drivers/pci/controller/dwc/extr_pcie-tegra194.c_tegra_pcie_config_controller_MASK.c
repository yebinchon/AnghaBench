#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct tegra_pcie_dw {int /*<<< orphan*/  pex_ctl_supply; int /*<<< orphan*/  core_clk; int /*<<< orphan*/  core_apb_rst; int /*<<< orphan*/  supports_clkreq; int /*<<< orphan*/  pci; int /*<<< orphan*/  pcie_cap_base; int /*<<< orphan*/  core_rst; TYPE_2__* atu_dma_res; TYPE_1__* dbi_res; int /*<<< orphan*/  dev; int /*<<< orphan*/  cid; } ;
struct TYPE_4__ {int start; } ;
struct TYPE_3__ {int start; } ;

/* Variables and functions */
 int /*<<< orphan*/  APPL_CFG_BASE_ADDR ; 
 int APPL_CFG_BASE_ADDR_MASK ; 
 int /*<<< orphan*/  APPL_CFG_IATU_DMA_BASE_ADDR ; 
 int APPL_CFG_IATU_DMA_BASE_ADDR_MASK ; 
 int /*<<< orphan*/  APPL_CFG_MISC ; 
 int APPL_CFG_MISC_ARCACHE_SHIFT ; 
 int APPL_CFG_MISC_ARCACHE_VAL ; 
 int /*<<< orphan*/  APPL_CFG_SLCG_OVERRIDE ; 
 int /*<<< orphan*/  APPL_CTRL ; 
 int APPL_CTRL_HW_HOT_RST_EN ; 
 int APPL_CTRL_HW_HOT_RST_MODE_MASK ; 
 int APPL_CTRL_HW_HOT_RST_MODE_SHIFT ; 
 int APPL_CTRL_SYS_PRE_DET_STATE ; 
 int /*<<< orphan*/  APPL_DM_TYPE ; 
 int APPL_DM_TYPE_RP ; 
 int /*<<< orphan*/  APPL_PINMUX ; 
 int APPL_PINMUX_CLKREQ_OUT_OVRD ; 
 int APPL_PINMUX_CLKREQ_OUT_OVRD_EN ; 
 int /*<<< orphan*/  PCI_CAP_ID_EXP ; 
 int FUNC0 (struct tegra_pcie_dw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_pcie_dw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_pcie_dw*) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_pcie_dw*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct tegra_pcie_dw*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct tegra_pcie_dw*) ; 
 int FUNC14 (struct tegra_pcie_dw*) ; 
 int FUNC15 (struct tegra_pcie_dw*) ; 

__attribute__((used)) static int FUNC16(struct tegra_pcie_dw *pcie,
					bool en_hw_hot_rst)
{
	int ret;
	u32 val;

	ret = FUNC12(pcie, true);
	if (ret) {
		FUNC4(pcie->dev,
			"Failed to enable controller %u: %d\n", pcie->cid, ret);
		return ret;
	}

	ret = FUNC15(pcie);
	if (ret < 0)
		goto fail_slot_reg_en;

	ret = FUNC9(pcie->pex_ctl_supply);
	if (ret < 0) {
		FUNC4(pcie->dev, "Failed to enable regulator: %d\n", ret);
		goto fail_reg_en;
	}

	ret = FUNC3(pcie->core_clk);
	if (ret) {
		FUNC4(pcie->dev, "Failed to enable core clock: %d\n", ret);
		goto fail_core_clk;
	}

	ret = FUNC11(pcie->core_apb_rst);
	if (ret) {
		FUNC4(pcie->dev, "Failed to deassert core APB reset: %d\n",
			ret);
		goto fail_core_apb_rst;
	}

	if (en_hw_hot_rst) {
		/* Enable HW_HOT_RST mode */
		val = FUNC0(pcie, APPL_CTRL);
		val &= ~(APPL_CTRL_HW_HOT_RST_MODE_MASK <<
			 APPL_CTRL_HW_HOT_RST_MODE_SHIFT);
		val |= APPL_CTRL_HW_HOT_RST_EN;
		FUNC1(pcie, val, APPL_CTRL);
	}

	ret = FUNC14(pcie);
	if (ret) {
		FUNC4(pcie->dev, "Failed to enable PHY: %d\n", ret);
		goto fail_phy;
	}

	/* Update CFG base address */
	FUNC1(pcie, pcie->dbi_res->start & APPL_CFG_BASE_ADDR_MASK,
		    APPL_CFG_BASE_ADDR);

	/* Configure this core for RP mode operation */
	FUNC1(pcie, APPL_DM_TYPE_RP, APPL_DM_TYPE);

	FUNC1(pcie, 0x0, APPL_CFG_SLCG_OVERRIDE);

	val = FUNC0(pcie, APPL_CTRL);
	FUNC1(pcie, val | APPL_CTRL_SYS_PRE_DET_STATE, APPL_CTRL);

	val = FUNC0(pcie, APPL_CFG_MISC);
	val |= (APPL_CFG_MISC_ARCACHE_VAL << APPL_CFG_MISC_ARCACHE_SHIFT);
	FUNC1(pcie, val, APPL_CFG_MISC);

	if (!pcie->supports_clkreq) {
		val = FUNC0(pcie, APPL_PINMUX);
		val |= APPL_PINMUX_CLKREQ_OUT_OVRD_EN;
		val |= APPL_PINMUX_CLKREQ_OUT_OVRD;
		FUNC1(pcie, val, APPL_PINMUX);
	}

	/* Update iATU_DMA base address */
	FUNC1(pcie,
		    pcie->atu_dma_res->start & APPL_CFG_IATU_DMA_BASE_ADDR_MASK,
		    APPL_CFG_IATU_DMA_BASE_ADDR);

	FUNC11(pcie->core_rst);

	pcie->pcie_cap_base = FUNC7(&pcie->pci,
						      PCI_CAP_ID_EXP);

	/* Disable ASPM-L1SS advertisement as there is no CLKREQ routing */
	if (!pcie->supports_clkreq) {
		FUNC5(pcie);
		FUNC6(pcie);
	}

	return ret;

fail_phy:
	FUNC10(pcie->core_apb_rst);
fail_core_apb_rst:
	FUNC2(pcie->core_clk);
fail_core_clk:
	FUNC8(pcie->pex_ctl_supply);
fail_reg_en:
	FUNC13(pcie);
fail_slot_reg_en:
	FUNC12(pcie, false);

	return ret;
}