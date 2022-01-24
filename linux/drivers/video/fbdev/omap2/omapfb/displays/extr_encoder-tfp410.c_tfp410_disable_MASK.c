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
struct panel_drv_data {int /*<<< orphan*/  pd_gpio; struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* dpi; } ;
struct omap_dss_device {int /*<<< orphan*/  state; TYPE_2__ ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* disable ) (struct omap_dss_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_DSS_DISPLAY_DISABLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_dss_device*) ; 
 struct panel_drv_data* FUNC4 (struct omap_dss_device*) ; 

__attribute__((used)) static void FUNC5(struct omap_dss_device *dssdev)
{
	struct panel_drv_data *ddata = FUNC4(dssdev);
	struct omap_dss_device *in = ddata->in;

	if (!FUNC2(dssdev))
		return;

	if (FUNC0(ddata->pd_gpio))
		FUNC1(ddata->pd_gpio, 0);

	in->ops.dpi->disable(in);

	dssdev->state = OMAP_DSS_DISPLAY_DISABLED;
}