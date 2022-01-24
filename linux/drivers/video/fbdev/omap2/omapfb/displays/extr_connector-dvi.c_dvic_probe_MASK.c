#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_4__ {void* timings; } ;
struct omap_dss_device {TYPE_1__ panel; int /*<<< orphan*/  owner; int /*<<< orphan*/  type; TYPE_2__* dev; int /*<<< orphan*/ * driver; } ;
struct panel_drv_data {int /*<<< orphan*/  i2c_adapter; int /*<<< orphan*/  in; struct omap_dss_device dssdev; void* timings; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OMAP_DISPLAY_TYPE_DVI ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 struct panel_drv_data* FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 void* dvic_default_timings ; 
 int /*<<< orphan*/  dvic_driver ; 
 int FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct panel_drv_data*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct panel_drv_data *ddata;
	struct omap_dss_device *dssdev;
	int r;

	if (!pdev->dev.of_node)
		return -ENODEV;

	ddata = FUNC1(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
	if (!ddata)
		return -ENOMEM;

	FUNC6(pdev, ddata);

	r = FUNC2(pdev);
	if (r)
		return r;

	ddata->timings = dvic_default_timings;

	dssdev = &ddata->dssdev;
	dssdev->driver = &dvic_driver;
	dssdev->dev = &pdev->dev;
	dssdev->type = OMAP_DISPLAY_TYPE_DVI;
	dssdev->owner = THIS_MODULE;
	dssdev->panel.timings = dvic_default_timings;

	r = FUNC5(dssdev);
	if (r) {
		FUNC0(&pdev->dev, "Failed to register panel\n");
		goto err_reg;
	}

	return 0;

err_reg:
	FUNC4(ddata->in);

	FUNC3(ddata->i2c_adapter);

	return r;
}