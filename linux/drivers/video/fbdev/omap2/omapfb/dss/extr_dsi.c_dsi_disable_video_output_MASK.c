#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct omap_overlay_manager {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {struct omap_overlay_manager* manager; } ;
struct dsi_data {scalar_t__ mode; TYPE_1__ output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ OMAP_DSS_DSI_VIDEO_MODE ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,struct omap_overlay_manager*) ; 
 struct platform_device* FUNC3 (struct omap_dss_device*) ; 
 struct dsi_data* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_overlay_manager*) ; 

__attribute__((used)) static void FUNC8(struct omap_dss_device *dssdev, int channel)
{
	struct platform_device *dsidev = FUNC3(dssdev);
	struct dsi_data *dsi = FUNC4(dsidev);
	struct omap_overlay_manager *mgr = dsi->output.manager;

	if (dsi->mode == OMAP_DSS_DSI_VIDEO_MODE) {
		FUNC5(dsidev, false);
		FUNC6(dsidev, channel, false);

		/* MODE, 0 = command mode */
		FUNC1(dsidev, FUNC0(channel), 0, 4, 4);

		FUNC6(dsidev, channel, true);
		FUNC5(dsidev, true);
	}

	FUNC7(mgr);

	FUNC2(dsidev, mgr);
}