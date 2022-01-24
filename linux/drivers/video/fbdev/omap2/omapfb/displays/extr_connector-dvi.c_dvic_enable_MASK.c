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
struct panel_drv_data {int /*<<< orphan*/  timings; struct omap_dss_device* in; } ;
struct TYPE_3__ {TYPE_2__* dvi; } ;
struct omap_dss_device {int /*<<< orphan*/  state; TYPE_1__ ops; } ;
struct TYPE_4__ {int (* enable ) (struct omap_dss_device*) ;int /*<<< orphan*/  (* set_timings ) (struct omap_dss_device*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  OMAP_DSS_DISPLAY_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct omap_dss_device*) ; 
 scalar_t__ FUNC1 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_dss_device*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct omap_dss_device*) ; 
 struct panel_drv_data* FUNC4 (struct omap_dss_device*) ; 

__attribute__((used)) static int FUNC5(struct omap_dss_device *dssdev)
{
	struct panel_drv_data *ddata = FUNC4(dssdev);
	struct omap_dss_device *in = ddata->in;
	int r;

	if (!FUNC0(dssdev))
		return -ENODEV;

	if (FUNC1(dssdev))
		return 0;

	in->ops.dvi->set_timings(in, &ddata->timings);

	r = in->ops.dvi->enable(in);
	if (r)
		return r;

	dssdev->state = OMAP_DSS_DISPLAY_ACTIVE;

	return 0;
}