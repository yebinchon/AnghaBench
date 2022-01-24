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
struct omap_dss_device {int dummy; } ;
struct dsi_data {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int,int) ; 
 struct platform_device* FUNC4 (struct omap_dss_device*) ; 
 struct dsi_data* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct omap_dss_device *dssdev,
		bool disconnect_lanes, bool enter_ulps)
{
	struct platform_device *dsidev = FUNC4(dssdev);
	struct dsi_data *dsi = FUNC5(dsidev);

	FUNC0("dsi_display_disable\n");

	FUNC1(!FUNC2(dsidev));

	FUNC8(&dsi->lock);

	FUNC7(dsidev, 0);
	FUNC7(dsidev, 1);
	FUNC7(dsidev, 2);
	FUNC7(dsidev, 3);

	FUNC3(dsidev, disconnect_lanes, enter_ulps);

	FUNC6(dsidev);

	FUNC9(&dsi->lock);
}