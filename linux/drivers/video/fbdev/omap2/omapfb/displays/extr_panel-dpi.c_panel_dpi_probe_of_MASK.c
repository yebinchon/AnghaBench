#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct videomode {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct panel_drv_data {struct omap_dss_device* in; int /*<<< orphan*/  videomode; int /*<<< orphan*/  backlight_gpio; struct omap_dss_device* enable_gpio; } ;
struct omap_dss_device {int dummy; } ;
typedef  struct omap_dss_device gpio_desc ;
struct display_timing {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (struct omap_dss_device*) ; 
 int FUNC1 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 struct omap_dss_device* FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device_node*,char*,struct display_timing*) ; 
 struct omap_dss_device* FUNC5 (struct device_node*) ; 
 struct panel_drv_data* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct display_timing*,struct videomode*) ; 
 int /*<<< orphan*/  FUNC8 (struct videomode*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct panel_drv_data *ddata = FUNC6(pdev);
	struct device_node *node = pdev->dev.of_node;
	struct omap_dss_device *in;
	int r;
	struct display_timing timing;
	struct videomode vm;
	struct gpio_desc *gpio;

	gpio = FUNC3(&pdev->dev, "enable", GPIOD_OUT_LOW);
	if (FUNC0(gpio))
		return FUNC1(gpio);

	ddata->enable_gpio = gpio;

	ddata->backlight_gpio = -ENOENT;

	r = FUNC4(node, "panel-timing", &timing);
	if (r) {
		FUNC2(&pdev->dev, "failed to get video timing\n");
		return r;
	}

	FUNC7(&timing, &vm);
	FUNC8(&vm, &ddata->videomode);

	in = FUNC5(node);
	if (FUNC0(in)) {
		FUNC2(&pdev->dev, "failed to find video source\n");
		return FUNC1(in);
	}

	ddata->in = in;

	return 0;
}