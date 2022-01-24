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
struct panel_drv_data {int /*<<< orphan*/  hpd_gpio; struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* hdmi; } ;
struct omap_dss_device {TYPE_2__ ops; } ;
struct TYPE_3__ {int (* detect ) (struct omap_dss_device*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct omap_dss_device*) ; 
 struct panel_drv_data* FUNC3 (struct omap_dss_device*) ; 

__attribute__((used)) static bool FUNC4(struct omap_dss_device *dssdev)
{
	struct panel_drv_data *ddata = FUNC3(dssdev);
	struct omap_dss_device *in = ddata->in;

	if (FUNC1(ddata->hpd_gpio))
		return FUNC0(ddata->hpd_gpio);
	else
		return in->ops.hdmi->detect(in);
}