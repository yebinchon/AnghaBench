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
struct panel_drv_data {int /*<<< orphan*/  timings; int /*<<< orphan*/  dev; struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* hdmi; } ;
struct omap_dss_device {int /*<<< orphan*/  state; TYPE_2__ ops; } ;
struct TYPE_3__ {int (* enable ) (struct omap_dss_device*) ;int /*<<< orphan*/  (* set_timings ) (struct omap_dss_device*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  OMAP_DSS_DISPLAY_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_dss_device*) ; 
 scalar_t__ FUNC2 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_dss_device*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct omap_dss_device*) ; 
 struct panel_drv_data* FUNC5 (struct omap_dss_device*) ; 

__attribute__((used)) static int FUNC6(struct omap_dss_device *dssdev)
{
	struct panel_drv_data *ddata = FUNC5(dssdev);
	struct omap_dss_device *in = ddata->in;
	int r;

	FUNC0(ddata->dev, "enable\n");

	if (!FUNC1(dssdev))
		return -ENODEV;

	if (FUNC2(dssdev))
		return 0;

	in->ops.hdmi->set_timings(in, &ddata->timings);

	r = in->ops.hdmi->enable(in);
	if (r)
		return r;

	dssdev->state = OMAP_DSS_DISPLAY_ACTIVE;

	return r;
}