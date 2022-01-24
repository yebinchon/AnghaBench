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
struct cw1200_platform_data_sdio {scalar_t__ reset; scalar_t__ powerup; scalar_t__ (* clk_ctrl ) (struct cw1200_platform_data_sdio const*,int) ;scalar_t__ (* power_ctrl ) (struct cw1200_platform_data_sdio const*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (struct cw1200_platform_data_sdio const*,int) ; 
 scalar_t__ FUNC6 (struct cw1200_platform_data_sdio const*,int) ; 

__attribute__((used)) static int FUNC7(const struct cw1200_platform_data_sdio *pdata)
{
	/* Ensure I/Os are pulled low */
	if (pdata->reset) {
		FUNC1(pdata->reset, "cw1200_wlan_reset");
		FUNC0(pdata->reset, 0);
	}
	if (pdata->powerup) {
		FUNC1(pdata->powerup, "cw1200_wlan_powerup");
		FUNC0(pdata->powerup, 0);
	}
	if (pdata->reset || pdata->powerup)
		FUNC3(10); /* Settle time? */

	/* Enable 3v3 and 1v8 to hardware */
	if (pdata->power_ctrl) {
		if (pdata->power_ctrl(pdata, true)) {
			FUNC4("power_ctrl() failed!\n");
			return -1;
		}
	}

	/* Enable CLK32K */
	if (pdata->clk_ctrl) {
		if (pdata->clk_ctrl(pdata, true)) {
			FUNC4("clk_ctrl() failed!\n");
			return -1;
		}
		FUNC3(10); /* Delay until clock is stable for 2 cycles */
	}

	/* Enable POWERUP signal */
	if (pdata->powerup) {
		FUNC2(pdata->powerup, 1);
		FUNC3(250); /* or more..? */
	}
	/* Enable RSTn signal */
	if (pdata->reset) {
		FUNC2(pdata->reset, 1);
		FUNC3(50); /* Or more..? */
	}
	return 0;
}