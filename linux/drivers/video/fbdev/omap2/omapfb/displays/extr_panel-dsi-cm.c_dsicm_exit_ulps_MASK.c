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
struct panel_drv_data {int ulps_enabled; int /*<<< orphan*/  ext_te_gpio; TYPE_3__* pdev; int /*<<< orphan*/  channel; struct omap_dss_device* in; } ;
struct TYPE_5__ {TYPE_1__* dsi; } ;
struct omap_dss_device {TYPE_2__ ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int (* enable ) (struct omap_dss_device*) ;int /*<<< orphan*/  (* enable_hs ) (struct omap_dss_device*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int FUNC0 (struct panel_drv_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct panel_drv_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct panel_drv_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct omap_dss_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct panel_drv_data *ddata)
{
	struct omap_dss_device *in = ddata->in;
	int r;

	if (!ddata->ulps_enabled)
		return 0;

	r = in->ops.dsi->enable(in);
	if (r) {
		FUNC1(&ddata->pdev->dev, "failed to enable DSI\n");
		goto err1;
	}

	in->ops.dsi->enable_hs(in, ddata->channel, true);

	r = FUNC0(ddata, true);
	if (r) {
		FUNC1(&ddata->pdev->dev, "failed to re-enable TE");
		goto err2;
	}

	if (FUNC5(ddata->ext_te_gpio))
		FUNC4(FUNC6(ddata->ext_te_gpio));

	FUNC3(ddata);

	ddata->ulps_enabled = false;

	return 0;

err2:
	FUNC1(&ddata->pdev->dev, "failed to exit ULPS");

	r = FUNC2(ddata);
	if (!r) {
		if (FUNC5(ddata->ext_te_gpio))
			FUNC4(FUNC6(ddata->ext_te_gpio));
		ddata->ulps_enabled = false;
	}
err1:
	FUNC3(ddata);

	return r;
}