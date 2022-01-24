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
struct panel_drv_data {scalar_t__ enable_gpio; struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* atv; } ;
struct omap_dss_device {int /*<<< orphan*/  state; TYPE_2__ ops; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* disable ) (struct omap_dss_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_DSS_DISPLAY_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_dss_device*) ; 
 struct panel_drv_data* FUNC4 (struct omap_dss_device*) ; 

__attribute__((used)) static void FUNC5(struct omap_dss_device *dssdev)
{
	struct panel_drv_data *ddata = FUNC4(dssdev);
	struct omap_dss_device *in = ddata->in;

	FUNC0(dssdev->dev, "disable\n");

	if (!FUNC2(dssdev))
		return;

	if (ddata->enable_gpio)
		FUNC1(ddata->enable_gpio, 0);

	in->ops.atv->disable(in);

	dssdev->state = OMAP_DSS_DISPLAY_DISABLED;
}