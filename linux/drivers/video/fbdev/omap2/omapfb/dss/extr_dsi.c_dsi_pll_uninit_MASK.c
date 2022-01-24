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
struct dsi_data {int vdds_dsi_enabled; int /*<<< orphan*/  vdds_dsi_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_PLL_POWER_OFF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 
 struct dsi_data* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct platform_device *dsidev, bool disconnect_lanes)
{
	struct dsi_data *dsi = FUNC3(dsidev);

	FUNC4(dsidev, DSI_PLL_POWER_OFF);
	if (disconnect_lanes) {
		FUNC1(!dsi->vdds_dsi_enabled);
		FUNC6(dsi->vdds_dsi_reg);
		dsi->vdds_dsi_enabled = false;
	}

	FUNC2(dsidev);
	FUNC5(dsidev);

	FUNC0("PLL uninit done\n");
}