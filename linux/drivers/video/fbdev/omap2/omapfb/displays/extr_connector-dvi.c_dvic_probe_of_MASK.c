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
struct panel_drv_data {struct i2c_adapter* i2c_adapter; struct omap_dss_device* in; } ;
struct omap_dss_device {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (struct omap_dss_device*) ; 
 int FUNC1 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 struct i2c_adapter* FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_dss_device*) ; 
 struct omap_dss_device* FUNC6 (struct device_node*) ; 
 struct panel_drv_data* FUNC7 (struct platform_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct panel_drv_data *ddata = FUNC7(pdev);
	struct device_node *node = pdev->dev.of_node;
	struct omap_dss_device *in;
	struct device_node *adapter_node;
	struct i2c_adapter *adapter;

	in = FUNC6(node);
	if (FUNC0(in)) {
		FUNC2(&pdev->dev, "failed to find video source\n");
		return FUNC1(in);
	}

	ddata->in = in;

	adapter_node = FUNC4(node, "ddc-i2c-bus", 0);
	if (adapter_node) {
		adapter = FUNC3(adapter_node);
		if (adapter == NULL) {
			FUNC2(&pdev->dev, "failed to parse ddc-i2c-bus\n");
			FUNC5(ddata->in);
			return -EPROBE_DEFER;
		}

		ddata->i2c_adapter = adapter;
	}

	return 0;
}