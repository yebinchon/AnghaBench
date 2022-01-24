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
struct dsi_data {int /*<<< orphan*/  module_id; int /*<<< orphan*/  ulps_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_DSS_CLK_SRC_FCK ; 
 int /*<<< orphan*/  FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*) ; 
 struct dsi_data* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct platform_device *dsidev,
		bool disconnect_lanes, bool enter_ulps)
{
	struct dsi_data *dsi = FUNC2(dsidev);

	if (enter_ulps && !dsi->ulps_enabled)
		FUNC1(dsidev);

	/* disable interface */
	FUNC3(dsidev, 0);
	FUNC5(dsidev, 0, 0);
	FUNC5(dsidev, 1, 0);
	FUNC5(dsidev, 2, 0);
	FUNC5(dsidev, 3, 0);

	FUNC6(dsi->module_id, OMAP_DSS_CLK_SRC_FCK);
	FUNC0(dsidev);
	FUNC4(dsidev, disconnect_lanes);
}