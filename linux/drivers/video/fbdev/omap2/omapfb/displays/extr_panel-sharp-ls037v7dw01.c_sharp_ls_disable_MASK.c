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
struct panel_drv_data {scalar_t__ vcc; scalar_t__ resb_gpio; scalar_t__ ini_gpio; struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* dpi; } ;
struct omap_dss_device {int /*<<< orphan*/  state; TYPE_2__ ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* disable ) (struct omap_dss_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_DSS_DISPLAY_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_dss_device*) ; 
 struct panel_drv_data* FUNC5 (struct omap_dss_device*) ; 

__attribute__((used)) static void FUNC6(struct omap_dss_device *dssdev)
{
	struct panel_drv_data *ddata = FUNC5(dssdev);
	struct omap_dss_device *in = ddata->in;

	if (!FUNC2(dssdev))
		return;

	if (ddata->ini_gpio)
		FUNC0(ddata->ini_gpio, 0);

	if (ddata->resb_gpio)
		FUNC0(ddata->resb_gpio, 0);

	/* wait at least 5 vsyncs after disabling the LCD */

	FUNC1(100);

	in->ops.dpi->disable(in);

	if (ddata->vcc)
		FUNC3(ddata->vcc);

	dssdev->state = OMAP_DSS_DISPLAY_DISABLED;
}