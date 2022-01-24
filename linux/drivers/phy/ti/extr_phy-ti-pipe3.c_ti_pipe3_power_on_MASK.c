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
struct ti_pipe3 {scalar_t__ mode; int /*<<< orphan*/  power_reg; int /*<<< orphan*/  phy_power_syscon; int /*<<< orphan*/  dev; int /*<<< orphan*/  sys_clk; int /*<<< orphan*/  control_dev; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int OMAP_CTRL_PIPE3_PHY_PWRCTL_CLK_CMD_MASK ; 
 int OMAP_CTRL_PIPE3_PHY_PWRCTL_CLK_FREQ_MASK ; 
 unsigned long OMAP_CTRL_PIPE3_PHY_PWRCTL_CLK_FREQ_SHIFT ; 
 scalar_t__ PIPE3_MODE_PCIE ; 
 scalar_t__ PIPE3_MODE_SATA ; 
 scalar_t__ PIPE3_MODE_USBSS ; 
 int PIPE3_PHY_RX_POWERON ; 
 int PIPE3_PHY_TX_POWERON ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct ti_pipe3* FUNC3 (struct phy*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ti_pipe3*) ; 

__attribute__((used)) static int FUNC6(struct phy *x)
{
	u32 val;
	u32 mask;
	int ret;
	unsigned long rate;
	struct ti_pipe3 *phy = FUNC3(x);
	bool rx_pending = false;

	if (!phy->phy_power_syscon) {
		FUNC2(phy->control_dev, 1);
		return 0;
	}

	rate = FUNC0(phy->sys_clk);
	if (!rate) {
		FUNC1(phy->dev, "Invalid clock rate\n");
		return -EINVAL;
	}
	rate = rate / 1000000;
	mask = OMAP_CTRL_PIPE3_PHY_PWRCTL_CLK_FREQ_MASK;
	val = rate << OMAP_CTRL_PIPE3_PHY_PWRCTL_CLK_FREQ_SHIFT;
	ret = FUNC4(phy->phy_power_syscon, phy->power_reg,
				 mask, val);
	/*
	 * For PCIe, TX and RX must be powered on simultaneously.
	 * For USB and SATA, TX must be powered on before RX
	 */
	mask = OMAP_CTRL_PIPE3_PHY_PWRCTL_CLK_CMD_MASK;
	if (phy->mode == PIPE3_MODE_SATA || phy->mode == PIPE3_MODE_USBSS) {
		val = PIPE3_PHY_TX_POWERON;
		rx_pending = true;
	} else {
		val = PIPE3_PHY_TX_POWERON | PIPE3_PHY_RX_POWERON;
	}

	FUNC4(phy->phy_power_syscon, phy->power_reg,
			   mask, val);

	if (rx_pending) {
		val = PIPE3_PHY_TX_POWERON | PIPE3_PHY_RX_POWERON;
		FUNC4(phy->phy_power_syscon, phy->power_reg,
				   mask, val);
	}

	if (phy->mode == PIPE3_MODE_PCIE)
		FUNC5(phy);

	return 0;
}