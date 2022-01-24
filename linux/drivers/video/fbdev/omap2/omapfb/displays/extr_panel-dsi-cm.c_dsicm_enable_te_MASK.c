#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct panel_drv_data {int te_enabled; int /*<<< orphan*/  lock; scalar_t__ enabled; struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* dsi; } ;
struct omap_dss_device {TYPE_2__ ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* bus_unlock ) (struct omap_dss_device*) ;int /*<<< orphan*/  (* bus_lock ) (struct omap_dss_device*) ;} ;

/* Variables and functions */
 int FUNC0 (struct panel_drv_data*,int) ; 
 int FUNC1 (struct panel_drv_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_dss_device*) ; 
 struct panel_drv_data* FUNC7 (struct omap_dss_device*) ; 

__attribute__((used)) static int FUNC8(struct omap_dss_device *dssdev, bool enable)
{
	struct panel_drv_data *ddata = FUNC7(dssdev);
	struct omap_dss_device *in = ddata->in;
	int r;

	FUNC2(&ddata->lock);

	if (ddata->te_enabled == enable)
		goto end;

	in->ops.dsi->bus_lock(in);

	if (ddata->enabled) {
		r = FUNC1(ddata);
		if (r)
			goto err;

		r = FUNC0(ddata, enable);
		if (r)
			goto err;
	}

	ddata->te_enabled = enable;

	in->ops.dsi->bus_unlock(in);
end:
	FUNC3(&ddata->lock);

	return 0;
err:
	in->ops.dsi->bus_unlock(in);
	FUNC3(&ddata->lock);

	return r;
}