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
struct panel_drv_data {scalar_t__ ini_gpio; scalar_t__ resb_gpio; scalar_t__ vcc; int /*<<< orphan*/  videomode; scalar_t__ data_lines; struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* dpi; } ;
struct omap_dss_device {int /*<<< orphan*/  state; TYPE_2__ ops; } ;
struct TYPE_3__ {int (* enable ) (struct omap_dss_device*) ;int /*<<< orphan*/  (* set_timings ) (struct omap_dss_device*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* set_data_lines ) (struct omap_dss_device*,scalar_t__) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  OMAP_DSS_DISPLAY_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_dss_device*) ; 
 scalar_t__ FUNC3 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_dss_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_dss_device*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct omap_dss_device*) ; 
 struct panel_drv_data* FUNC9 (struct omap_dss_device*) ; 

__attribute__((used)) static int FUNC10(struct omap_dss_device *dssdev)
{
	struct panel_drv_data *ddata = FUNC9(dssdev);
	struct omap_dss_device *in = ddata->in;
	int r;

	if (!FUNC2(dssdev))
		return -ENODEV;

	if (FUNC3(dssdev))
		return 0;

	if (ddata->data_lines)
		in->ops.dpi->set_data_lines(in, ddata->data_lines);
	in->ops.dpi->set_timings(in, &ddata->videomode);

	if (ddata->vcc) {
		r = FUNC5(ddata->vcc);
		if (r != 0)
			return r;
	}

	r = in->ops.dpi->enable(in);
	if (r) {
		FUNC4(ddata->vcc);
		return r;
	}

	/* wait couple of vsyncs until enabling the LCD */
	FUNC1(50);

	if (ddata->resb_gpio)
		FUNC0(ddata->resb_gpio, 1);

	if (ddata->ini_gpio)
		FUNC0(ddata->ini_gpio, 1);

	dssdev->state = OMAP_DSS_DISPLAY_ACTIVE;

	return 0;
}