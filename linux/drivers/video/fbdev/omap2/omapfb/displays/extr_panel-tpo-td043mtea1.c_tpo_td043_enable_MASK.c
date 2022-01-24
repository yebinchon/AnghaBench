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
struct panel_drv_data {int /*<<< orphan*/  spi_suspended; int /*<<< orphan*/  videomode; scalar_t__ data_lines; struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* dpi; } ;
struct omap_dss_device {int /*<<< orphan*/  state; TYPE_2__ ops; } ;
struct TYPE_3__ {int (* enable ) (struct omap_dss_device*) ;int /*<<< orphan*/  (* disable ) (struct omap_dss_device*) ;int /*<<< orphan*/  (* set_timings ) (struct omap_dss_device*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* set_data_lines ) (struct omap_dss_device*,scalar_t__) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  OMAP_DSS_DISPLAY_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct omap_dss_device*) ; 
 scalar_t__ FUNC1 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_dss_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_dss_device*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_dss_device*) ; 
 struct panel_drv_data* FUNC6 (struct omap_dss_device*) ; 
 int FUNC7 (struct panel_drv_data*) ; 

__attribute__((used)) static int FUNC8(struct omap_dss_device *dssdev)
{
	struct panel_drv_data *ddata = FUNC6(dssdev);
	struct omap_dss_device *in = ddata->in;
	int r;

	if (!FUNC0(dssdev))
		return -ENODEV;

	if (FUNC1(dssdev))
		return 0;

	if (ddata->data_lines)
		in->ops.dpi->set_data_lines(in, ddata->data_lines);
	in->ops.dpi->set_timings(in, &ddata->videomode);

	r = in->ops.dpi->enable(in);
	if (r)
		return r;

	/*
	 * If we are resuming from system suspend, SPI clocks might not be
	 * enabled yet, so we'll program the LCD from SPI PM resume callback.
	 */
	if (!ddata->spi_suspended) {
		r = FUNC7(ddata);
		if (r) {
			in->ops.dpi->disable(in);
			return r;
		}
	}

	dssdev->state = OMAP_DSS_DISPLAY_ACTIVE;

	return 0;
}