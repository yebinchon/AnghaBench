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
struct panel_drv_data {int /*<<< orphan*/  invert_polarity; TYPE_3__* dev; int /*<<< orphan*/  timings; struct omap_dss_device* in; } ;
struct TYPE_5__ {TYPE_1__* atv; } ;
struct omap_dss_device {int /*<<< orphan*/  state; TYPE_2__ ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_4__ {int (* enable ) (struct omap_dss_device*) ;int /*<<< orphan*/  (* invert_vid_out_polarity ) (struct omap_dss_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_type ) (struct omap_dss_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_timings ) (struct omap_dss_device*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  OMAP_DSS_DISPLAY_ACTIVE ; 
 int /*<<< orphan*/  OMAP_DSS_VENC_TYPE_COMPOSITE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_dss_device*) ; 
 scalar_t__ FUNC2 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_dss_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_dss_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_dss_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct omap_dss_device*) ; 
 struct panel_drv_data* FUNC7 (struct omap_dss_device*) ; 

__attribute__((used)) static int FUNC8(struct omap_dss_device *dssdev)
{
	struct panel_drv_data *ddata = FUNC7(dssdev);
	struct omap_dss_device *in = ddata->in;
	int r;

	FUNC0(ddata->dev, "enable\n");

	if (!FUNC1(dssdev))
		return -ENODEV;

	if (FUNC2(dssdev))
		return 0;

	in->ops.atv->set_timings(in, &ddata->timings);

	if (!ddata->dev->of_node) {
		in->ops.atv->set_type(in, OMAP_DSS_VENC_TYPE_COMPOSITE);

		in->ops.atv->invert_vid_out_polarity(in,
			ddata->invert_polarity);
	}

	r = in->ops.atv->enable(in);
	if (r)
		return r;

	dssdev->state = OMAP_DSS_DISPLAY_ACTIVE;

	return r;
}