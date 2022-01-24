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
struct ti_pipe3 {scalar_t__ mode; int /*<<< orphan*/  dpll_reset_reg; int /*<<< orphan*/  dpll_reset_syscon; int /*<<< orphan*/  dev; int /*<<< orphan*/  pll_ctrl_base; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ PIPE3_MODE_PCIE ; 
 scalar_t__ PIPE3_MODE_SATA ; 
 int /*<<< orphan*/  PLL_CONFIGURATION2 ; 
 int PLL_IDLE ; 
 int /*<<< orphan*/  PLL_IDLE_TIME ; 
 int PLL_LDOPWDN ; 
 int /*<<< orphan*/  PLL_STATUS ; 
 int PLL_TICOPWDN ; 
 int /*<<< orphan*/  SATA_PLL_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 struct ti_pipe3* FUNC3 (struct phy*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ti_pipe3*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct phy *x)
{
	struct ti_pipe3 *phy = FUNC3(x);
	u32 val;
	unsigned long timeout;

	/* If dpll_reset_syscon is not present we wont power down SATA DPLL
	 * due to Errata i783
	 */
	if (phy->mode == PIPE3_MODE_SATA && !phy->dpll_reset_syscon)
		return 0;

	/* PCIe doesn't have internal DPLL */
	if (phy->mode != PIPE3_MODE_PCIE) {
		/* Put DPLL in IDLE mode */
		val = FUNC6(phy->pll_ctrl_base, PLL_CONFIGURATION2);
		val |= PLL_IDLE;
		FUNC7(phy->pll_ctrl_base, PLL_CONFIGURATION2, val);

		/* wait for LDO and Oscillator to power down */
		timeout = jiffies + FUNC2(PLL_IDLE_TIME);
		do {
			FUNC0();
			val = FUNC6(phy->pll_ctrl_base, PLL_STATUS);
			if ((val & PLL_TICOPWDN) && (val & PLL_LDOPWDN))
				break;
		} while (!FUNC8(jiffies, timeout));

		if (!(val & PLL_TICOPWDN) || !(val & PLL_LDOPWDN)) {
			FUNC1(phy->dev, "Failed to power down: PLL_STATUS 0x%x\n",
				val);
			return -EBUSY;
		}
	}

	/* i783: SATA needs control bit toggle after PLL unlock */
	if (phy->mode == PIPE3_MODE_SATA) {
		FUNC4(phy->dpll_reset_syscon, phy->dpll_reset_reg,
				   SATA_PLL_SOFT_RESET, SATA_PLL_SOFT_RESET);
		FUNC4(phy->dpll_reset_syscon, phy->dpll_reset_reg,
				   SATA_PLL_SOFT_RESET, 0);
	}

	FUNC5(phy);

	return 0;
}