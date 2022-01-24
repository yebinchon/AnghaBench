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
struct panel_drv_data {int /*<<< orphan*/  backlight_gpio; int /*<<< orphan*/  enable_gpio; int /*<<< orphan*/  videomode; scalar_t__ data_lines; struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* dpi; } ;
struct omap_dss_device {int /*<<< orphan*/  state; TYPE_2__ ops; } ;
struct TYPE_3__ {int (* enable ) (struct omap_dss_device*) ;int /*<<< orphan*/  (* set_timings ) (struct omap_dss_device*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* set_data_lines ) (struct omap_dss_device*,scalar_t__) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  OMAP_DSS_DISPLAY_ACTIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_dss_device*) ; 
 scalar_t__ FUNC4 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_dss_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_dss_device*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct omap_dss_device*) ; 
 struct panel_drv_data* FUNC8 (struct omap_dss_device*) ; 

__attribute__((used)) static int FUNC9(struct omap_dss_device *dssdev)
{
	struct panel_drv_data *ddata = FUNC8(dssdev);
	struct omap_dss_device *in = ddata->in;
	int r;

	if (!FUNC3(dssdev))
		return -ENODEV;

	if (FUNC4(dssdev))
		return 0;

	if (ddata->data_lines)
		in->ops.dpi->set_data_lines(in, ddata->data_lines);
	in->ops.dpi->set_timings(in, &ddata->videomode);

	r = in->ops.dpi->enable(in);
	if (r)
		return r;

	FUNC2(ddata->enable_gpio, 1);

	if (FUNC0(ddata->backlight_gpio))
		FUNC1(ddata->backlight_gpio, 1);

	dssdev->state = OMAP_DSS_DISPLAY_ACTIVE;

	return 0;
}