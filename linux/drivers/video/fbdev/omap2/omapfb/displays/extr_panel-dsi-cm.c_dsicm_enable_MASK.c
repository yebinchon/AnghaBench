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
 int ENODEV ; 
 int /*<<< orphan*/  OMAP_DSS_DISPLAY_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct panel_drv_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_dss_device*) ; 
 scalar_t__ FUNC5 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_dss_device*) ; 
 struct panel_drv_data* FUNC8 (struct omap_dss_device*) ; 

__attribute__((used)) static int FUNC9(struct omap_dss_device *dssdev)
{
	struct panel_drv_data *ddata = FUNC8(dssdev);
	struct omap_dss_device *in = ddata->in;
	int r;

	FUNC0(&ddata->pdev->dev, "enable\n");

	FUNC2(&ddata->lock);

	if (!FUNC4(dssdev)) {
		r = -ENODEV;
		goto err;
	}

	if (FUNC5(dssdev)) {
		r = 0;
		goto err;
	}

	in->ops.dsi->bus_lock(in);

	r = FUNC1(ddata);

	in->ops.dsi->bus_unlock(in);

	if (r)
		goto err;

	dssdev->state = OMAP_DSS_DISPLAY_ACTIVE;

	FUNC3(&ddata->lock);

	return 0;
err:
	FUNC0(&ddata->pdev->dev, "enable failed\n");
	FUNC3(&ddata->lock);
	return r;
}