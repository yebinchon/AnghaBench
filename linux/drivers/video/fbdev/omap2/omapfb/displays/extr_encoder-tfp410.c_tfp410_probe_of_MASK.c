#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct panel_drv_data {int pd_gpio; struct omap_dss_device* in; } ;
struct omap_dss_device {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct omap_dss_device*) ; 
 int FUNC1 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 struct omap_dss_device* FUNC5 (struct device_node*) ; 
 struct panel_drv_data* FUNC6 (struct platform_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct panel_drv_data *ddata = FUNC6(pdev);
	struct device_node *node = pdev->dev.of_node;
	struct omap_dss_device *in;
	int gpio;

	gpio = FUNC4(node, "powerdown-gpios", 0);

	if (FUNC3(gpio) || gpio == -ENOENT) {
		ddata->pd_gpio = gpio;
	} else {
		FUNC2(&pdev->dev, "failed to parse PD gpio\n");
		return gpio;
	}

	in = FUNC5(node);
	if (FUNC0(in)) {
		FUNC2(&pdev->dev, "failed to find video source\n");
		return FUNC1(in);
	}

	ddata->in = in;

	return 0;
}