#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct panel_drv_data {int /*<<< orphan*/  lock; TYPE_3__* pdev; struct omap_dss_device* in; } ;
struct TYPE_5__ {TYPE_1__* dsi; } ;
struct omap_dss_device {int /*<<< orphan*/  state; TYPE_2__ ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* bus_unlock ) (struct omap_dss_device*) ;int /*<<< orphan*/  (* bus_lock ) (struct omap_dss_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_DSS_DISPLAY_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct panel_drv_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct panel_drv_data*) ; 
 int FUNC3 (struct panel_drv_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct omap_dss_device*) ; 
 struct panel_drv_data* FUNC9 (struct omap_dss_device*) ; 

__attribute__((used)) static void FUNC10(struct omap_dss_device *dssdev)
{
	struct panel_drv_data *ddata = FUNC9(dssdev);
	struct omap_dss_device *in = ddata->in;
	int r;

	FUNC0(&ddata->pdev->dev, "disable\n");

	FUNC4(&ddata->lock);

	FUNC1(ddata);

	in->ops.dsi->bus_lock(in);

	if (FUNC6(dssdev)) {
		r = FUNC3(ddata);
		if (!r)
			FUNC2(ddata);
	}

	in->ops.dsi->bus_unlock(in);

	dssdev->state = OMAP_DSS_DISPLAY_DISABLED;

	FUNC5(&ddata->lock);
}