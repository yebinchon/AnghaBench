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
struct panel_drv_data {int /*<<< orphan*/  dssdev; struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* atv; } ;
struct omap_dss_device {TYPE_2__ ops; struct omap_dss_device* dst; int /*<<< orphan*/ * src; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* disconnect ) (struct omap_dss_device*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_dss_device*,int /*<<< orphan*/ *) ; 
 struct panel_drv_data* FUNC4 (struct omap_dss_device*) ; 

__attribute__((used)) static void FUNC5(struct omap_dss_device *dssdev,
		struct omap_dss_device *dst)
{
	struct panel_drv_data *ddata = FUNC4(dssdev);
	struct omap_dss_device *in = ddata->in;

	FUNC1(dssdev->dev, "disconnect\n");

	FUNC0(!FUNC2(dssdev));
	if (!FUNC2(dssdev))
		return;

	FUNC0(dst != dssdev->dst);
	if (dst != dssdev->dst)
		return;

	dst->src = NULL;
	dssdev->dst = NULL;

	in->ops.atv->disconnect(in, &ddata->dssdev);
}