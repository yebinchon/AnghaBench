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
struct tegra_pcie_dw {int /*<<< orphan*/  dev; scalar_t__ appl_base; int /*<<< orphan*/  pci; } ;

/* Variables and functions */
 int /*<<< orphan*/  APPL_CTRL ; 
 int APPL_CTRL_LTSSM_EN ; 
 scalar_t__ APPL_DEBUG ; 
 int APPL_DEBUG_LTSSM_STATE_MASK ; 
 int APPL_DEBUG_LTSSM_STATE_SHIFT ; 
 int /*<<< orphan*/  APPL_PINMUX ; 
 int APPL_PINMUX_CLKREQ_OVERRIDE ; 
 int APPL_PINMUX_CLKREQ_OVERRIDE_EN ; 
 int APPL_PINMUX_CLK_OUTPUT_IN_OVERRIDE ; 
 int APPL_PINMUX_CLK_OUTPUT_IN_OVERRIDE_EN ; 
 int APPL_PINMUX_PEX_RST ; 
 int LTSSM_STATE_PRE_DETECT ; 
 int /*<<< orphan*/  LTSSM_TIMEOUT ; 
 int FUNC0 (struct tegra_pcie_dw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_pcie_dw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (scalar_t__,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct tegra_pcie_dw*) ; 

__attribute__((used)) static void FUNC7(struct tegra_pcie_dw *pcie)
{
	u32 data;
	int err;

	if (!FUNC5(&pcie->pci)) {
		FUNC2(pcie->dev, "PCIe link is not up...!\n");
		return;
	}

	if (FUNC6(pcie)) {
		FUNC3(pcie->dev, "Link didn't transition to L2 state\n");
		/*
		 * TX lane clock freq will reset to Gen1 only if link is in L2
		 * or detect state.
		 * So apply pex_rst to end point to force RP to go into detect
		 * state
		 */
		data = FUNC0(pcie, APPL_PINMUX);
		data &= ~APPL_PINMUX_PEX_RST;
		FUNC1(pcie, data, APPL_PINMUX);

		err = FUNC4(pcie->appl_base + APPL_DEBUG,
						data,
						((data &
						APPL_DEBUG_LTSSM_STATE_MASK) >>
						APPL_DEBUG_LTSSM_STATE_SHIFT) ==
						LTSSM_STATE_PRE_DETECT,
						1, LTSSM_TIMEOUT);
		if (err) {
			FUNC3(pcie->dev, "Link didn't go to detect state\n");
		} else {
			/* Disable LTSSM after link is in detect state */
			data = FUNC0(pcie, APPL_CTRL);
			data &= ~APPL_CTRL_LTSSM_EN;
			FUNC1(pcie, data, APPL_CTRL);
		}
	}
	/*
	 * DBI registers may not be accessible after this as PLL-E would be
	 * down depending on how CLKREQ is pulled by end point
	 */
	data = FUNC0(pcie, APPL_PINMUX);
	data |= (APPL_PINMUX_CLKREQ_OVERRIDE_EN | APPL_PINMUX_CLKREQ_OVERRIDE);
	/* Cut REFCLK to slot */
	data |= APPL_PINMUX_CLK_OUTPUT_IN_OVERRIDE_EN;
	data &= ~APPL_PINMUX_CLK_OUTPUT_IN_OVERRIDE;
	FUNC1(pcie, data, APPL_PINMUX);
}