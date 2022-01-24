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
struct omap_overlay_manager {int /*<<< orphan*/  id; } ;
struct dsi_data {scalar_t__ mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_DSS_CLK_SRC_FCK ; 
 scalar_t__ OMAP_DSS_DSI_CMD_MODE ; 
 int /*<<< orphan*/  dsi_framedone_irq_callback ; 
 struct dsi_data* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_overlay_manager*,int /*<<< orphan*/ ,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct platform_device *dsidev,
		struct omap_overlay_manager *mgr)
{
	struct dsi_data *dsi = FUNC0(dsidev);

	if (dsi->mode == OMAP_DSS_DSI_CMD_MODE)
		FUNC1(mgr,
				dsi_framedone_irq_callback, dsidev);

	FUNC2(mgr->id, OMAP_DSS_CLK_SRC_FCK);
}