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
struct platform_device {int dummy; } ;
typedef  enum dsi_pll_power_state { ____Placeholder_dsi_pll_power_state } dsi_pll_power_state ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_CLK_CTRL ; 
 int DSI_PLL_POWER_ON_ALL ; 
 int DSI_PLL_POWER_ON_DIV ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FEAT_DSI_PLL_PWR_BUG ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct platform_device *dsidev,
		enum dsi_pll_power_state state)
{
	int t = 0;

	/* DSI-PLL power command 0x3 is not working */
	if (FUNC4(FEAT_DSI_PLL_PWR_BUG) &&
			state == DSI_PLL_POWER_ON_DIV)
		state = DSI_PLL_POWER_ON_ALL;

	/* PLL_PWR_CMD */
	FUNC2(dsidev, DSI_CLK_CTRL, state, 31, 30);

	/* PLL_PWR_STATUS */
	while (FUNC1(FUNC3(dsidev, DSI_CLK_CTRL), 29, 28) != state) {
		if (++t > 1000) {
			FUNC0("Failed to set DSI PLL power mode to %d\n",
					state);
			return -ENODEV;
		}
		FUNC5(1);
	}

	return 0;
}