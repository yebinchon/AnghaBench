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
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/ * atv; } ;
struct omap_dss_device {int /*<<< orphan*/  owner; void* output_type; void* type; TYPE_2__* dev; TYPE_1__ ops; } ;
struct panel_drv_data {struct omap_dss_device* in; struct omap_dss_device dssdev; struct omap_dss_device* enable_gpio; } ;
struct gpio_desc {int /*<<< orphan*/  owner; void* output_type; void* type; TYPE_2__* dev; TYPE_1__ ops; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (struct omap_dss_device*) ; 
 void* OMAP_DISPLAY_TYPE_VENC ; 
 int FUNC1 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 struct omap_dss_device* FUNC4 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 struct panel_drv_data* FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_dss_device*) ; 
 struct omap_dss_device* FUNC7 (struct device_node*) ; 
 int FUNC8 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  opa362_atv_ops ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct panel_drv_data*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device_node *node = pdev->dev.of_node;
	struct panel_drv_data *ddata;
	struct omap_dss_device *dssdev, *in;
	struct gpio_desc *gpio;
	int r;

	FUNC2(&pdev->dev, "probe\n");

	if (node == NULL) {
		FUNC3(&pdev->dev, "Unable to find device tree\n");
		return -EINVAL;
	}

	ddata = FUNC5(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
	if (!ddata)
		return -ENOMEM;

	FUNC9(pdev, ddata);

	gpio = FUNC4(&pdev->dev, "enable", GPIOD_OUT_LOW);
	if (FUNC0(gpio))
		return FUNC1(gpio);

	ddata->enable_gpio = gpio;

	in = FUNC7(node);
	if (FUNC0(in)) {
		FUNC3(&pdev->dev, "failed to find video source\n");
		return FUNC1(in);
	}

	ddata->in = in;

	dssdev = &ddata->dssdev;
	dssdev->ops.atv = &opa362_atv_ops;
	dssdev->dev = &pdev->dev;
	dssdev->type = OMAP_DISPLAY_TYPE_VENC;
	dssdev->output_type = OMAP_DISPLAY_TYPE_VENC;
	dssdev->owner = THIS_MODULE;

	r = FUNC8(dssdev);
	if (r) {
		FUNC3(&pdev->dev, "Failed to register output\n");
		goto err_reg;
	}

	return 0;
err_reg:
	FUNC6(ddata->in);
	return r;
}