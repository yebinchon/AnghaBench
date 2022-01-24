#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/ * hdmi; } ;
struct omap_dss_device {int port_num; int /*<<< orphan*/  owner; void* output_type; void* type; TYPE_2__* dev; TYPE_1__ ops; } ;
struct panel_drv_data {int /*<<< orphan*/  in; struct omap_dss_device dssdev; struct gpio_desc* hpd_gpio; struct gpio_desc* ls_oe_gpio; struct gpio_desc* ct_cp_hpd_gpio; } ;
struct gpio_desc {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 void* OMAP_DISPLAY_TYPE_HDMI ; 
 int FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 struct gpio_desc* FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct panel_drv_data* FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct panel_drv_data*) ; 
 int /*<<< orphan*/  tpd_hdmi_ops ; 
 int FUNC9 (struct platform_device*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct omap_dss_device *dssdev;
	struct panel_drv_data *ddata;
	int r;
	struct gpio_desc *gpio;

	ddata = FUNC5(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
	if (!ddata)
		return -ENOMEM;

	FUNC8(pdev, ddata);

	if (pdev->dev.of_node) {
		r = FUNC9(pdev);
		if (r)
			return r;
	} else {
		return -ENODEV;
	}

	gpio = FUNC4(&pdev->dev, NULL, 0,
		GPIOD_OUT_LOW);
	if (FUNC0(gpio)) {
		r = FUNC1(gpio);
		goto err_gpio;
	}

	ddata->ct_cp_hpd_gpio = gpio;

	gpio = FUNC4(&pdev->dev, NULL, 1,
		GPIOD_OUT_LOW);
	if (FUNC0(gpio)) {
		r = FUNC1(gpio);
		goto err_gpio;
	}

	ddata->ls_oe_gpio = gpio;

	gpio = FUNC3(&pdev->dev, NULL, 2,
		GPIOD_IN);
	if (FUNC0(gpio)) {
		r = FUNC1(gpio);
		goto err_gpio;
	}

	ddata->hpd_gpio = gpio;

	dssdev = &ddata->dssdev;
	dssdev->ops.hdmi = &tpd_hdmi_ops;
	dssdev->dev = &pdev->dev;
	dssdev->type = OMAP_DISPLAY_TYPE_HDMI;
	dssdev->output_type = OMAP_DISPLAY_TYPE_HDMI;
	dssdev->owner = THIS_MODULE;
	dssdev->port_num = 1;

	r = FUNC7(dssdev);
	if (r) {
		FUNC2(&pdev->dev, "Failed to register output\n");
		goto err_reg;
	}

	return 0;
err_reg:
err_gpio:
	FUNC6(ddata->in);
	return r;
}