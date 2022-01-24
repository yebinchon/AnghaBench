#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct videomode {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct omap_dss_device {int /*<<< orphan*/  name; } ;
struct panel_drv_data {struct omap_dss_device* in; int /*<<< orphan*/  backlight_gpio; int /*<<< orphan*/  enable_gpio; struct omap_dss_device dssdev; int /*<<< orphan*/  videomode; int /*<<< orphan*/  data_lines; } ;
struct panel_dpi_platform_data {int /*<<< orphan*/  backlight_gpio; int /*<<< orphan*/  enable_gpio; int /*<<< orphan*/  name; int /*<<< orphan*/  display_timing; int /*<<< orphan*/  data_lines; int /*<<< orphan*/  source; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct panel_dpi_platform_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct omap_dss_device* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_dss_device*) ; 
 struct panel_drv_data* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct videomode*) ; 
 int /*<<< orphan*/  FUNC8 (struct videomode*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	const struct panel_dpi_platform_data *pdata;
	struct panel_drv_data *ddata = FUNC6(pdev);
	struct omap_dss_device *dssdev, *in;
	struct videomode vm;
	int r;

	pdata = FUNC1(&pdev->dev);

	in = FUNC4(pdata->source);
	if (in == NULL) {
		FUNC0(&pdev->dev, "failed to find video source '%s'\n",
				pdata->source);
		return -EPROBE_DEFER;
	}

	ddata->in = in;

	ddata->data_lines = pdata->data_lines;

	FUNC7(pdata->display_timing, &vm);
	FUNC8(&vm, &ddata->videomode);

	dssdev = &ddata->dssdev;
	dssdev->name = pdata->name;

	r = FUNC2(&pdev->dev, pdata->enable_gpio,
					GPIOF_OUT_INIT_LOW, "panel enable");
	if (r)
		goto err_gpio;

	ddata->enable_gpio = FUNC3(pdata->enable_gpio);

	ddata->backlight_gpio = pdata->backlight_gpio;

	return 0;

err_gpio:
	FUNC5(ddata->in);
	return r;
}