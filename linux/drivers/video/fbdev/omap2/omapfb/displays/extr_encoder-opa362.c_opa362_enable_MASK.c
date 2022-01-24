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
struct panel_drv_data {scalar_t__ enable_gpio; int /*<<< orphan*/  timings; struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* atv; } ;
struct omap_dss_device {int /*<<< orphan*/  state; TYPE_2__ ops; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int (* enable ) (struct omap_dss_device*) ;int /*<<< orphan*/  (* set_timings ) (struct omap_dss_device*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  OMAP_DSS_DISPLAY_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_dss_device*) ; 
 scalar_t__ FUNC3 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_dss_device*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct omap_dss_device*) ; 
 struct panel_drv_data* FUNC6 (struct omap_dss_device*) ; 

__attribute__((used)) static int FUNC7(struct omap_dss_device *dssdev)
{
	struct panel_drv_data *ddata = FUNC6(dssdev);
	struct omap_dss_device *in = ddata->in;
	int r;

	FUNC0(dssdev->dev, "enable\n");

	if (!FUNC2(dssdev))
		return -ENODEV;

	if (FUNC3(dssdev))
		return 0;

	in->ops.atv->set_timings(in, &ddata->timings);

	r = in->ops.atv->enable(in);
	if (r)
		return r;

	if (ddata->enable_gpio)
		FUNC1(ddata->enable_gpio, 1);

	dssdev->state = OMAP_DSS_DISPLAY_ACTIVE;

	return 0;
}