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
struct omap_overlay_manager {int /*<<< orphan*/  id; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {struct omap_overlay_manager* manager; } ;
struct dpi_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  vdds_dsi_reg; scalar_t__ pll; TYPE_1__ output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FEAT_DPI_USES_VDDS_DSI ; 
 int /*<<< orphan*/  OMAP_DSS_CLK_SRC_FCK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct dpi_data* FUNC1 (struct omap_dss_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_overlay_manager*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct omap_dss_device *dssdev)
{
	struct dpi_data *dpi = FUNC1(dssdev);
	struct omap_overlay_manager *mgr = dpi->output.manager;

	FUNC6(&dpi->lock);

	FUNC3(mgr);

	if (dpi->pll) {
		FUNC5(mgr->id, OMAP_DSS_CLK_SRC_FCK);
		FUNC4(dpi->pll);
	}

	FUNC0();

	if (FUNC2(FEAT_DPI_USES_VDDS_DSI))
		FUNC8(dpi->vdds_dsi_reg);

	FUNC7(&dpi->lock);
}