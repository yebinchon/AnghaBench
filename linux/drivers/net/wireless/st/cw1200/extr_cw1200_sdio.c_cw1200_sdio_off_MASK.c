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
struct cw1200_platform_data_sdio {int /*<<< orphan*/  (* clk_ctrl ) (struct cw1200_platform_data_sdio const*,int) ;int /*<<< orphan*/  (* power_ctrl ) (struct cw1200_platform_data_sdio const*,int) ;scalar_t__ reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct cw1200_platform_data_sdio const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cw1200_platform_data_sdio const*,int) ; 

__attribute__((used)) static int FUNC5(const struct cw1200_platform_data_sdio *pdata)
{
	if (pdata->reset) {
		FUNC1(pdata->reset, 0);
		FUNC2(30); /* Min is 2 * CLK32K cycles */
		FUNC0(pdata->reset);
	}

	if (pdata->power_ctrl)
		pdata->power_ctrl(pdata, false);
	if (pdata->clk_ctrl)
		pdata->clk_ctrl(pdata, false);

	return 0;
}