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
struct panel_drv_data {int /*<<< orphan*/  backlight_gpio; scalar_t__ enable_gpio; struct omap_dss_device* in; } ;
struct TYPE_3__ {TYPE_2__* dpi; } ;
struct omap_dss_device {int /*<<< orphan*/  state; TYPE_1__ ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* disable ) (struct omap_dss_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_DSS_DISPLAY_DISABLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_dss_device*) ; 
 struct panel_drv_data* FUNC5 (struct omap_dss_device*) ; 

__attribute__((used)) static void FUNC6(struct omap_dss_device *dssdev)
{
	struct panel_drv_data *ddata = FUNC5(dssdev);
	struct omap_dss_device *in = ddata->in;

	if (!FUNC3(dssdev))
		return;

	if (ddata->enable_gpio)
		FUNC2(ddata->enable_gpio, 0);

	if (FUNC0(ddata->backlight_gpio))
		FUNC1(ddata->backlight_gpio, 0);

	in->ops.dpi->disable(in);

	dssdev->state = OMAP_DSS_DISPLAY_DISABLED;
}