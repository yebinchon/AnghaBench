#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct panel_drv_data {struct omap_dss_device* in; int /*<<< orphan*/  ud_gpio; int /*<<< orphan*/  lr_gpio; int /*<<< orphan*/  mo_gpio; int /*<<< orphan*/  resb_gpio; int /*<<< orphan*/  ini_gpio; struct omap_dss_device* vcc; } ;
struct omap_dss_device {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct omap_dss_device*) ; 
 int FUNC1 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 struct omap_dss_device* FUNC3 (TYPE_1__*,char*) ; 
 struct omap_dss_device* FUNC4 (struct device_node*) ; 
 struct panel_drv_data* FUNC5 (struct platform_device*) ; 
 int FUNC6 (TYPE_1__*,int,int,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct panel_drv_data *ddata = FUNC5(pdev);
	struct device_node *node = pdev->dev.of_node;
	struct omap_dss_device *in;
	int r;

	ddata->vcc = FUNC3(&pdev->dev, "envdd");
	if (FUNC0(ddata->vcc)) {
		FUNC2(&pdev->dev, "failed to get regulator\n");
		return FUNC1(ddata->vcc);
	}

	/* lcd INI */
	r = FUNC6(&pdev->dev, 0, 0, "enable", &ddata->ini_gpio);
	if (r)
		return r;

	/* lcd RESB */
	r = FUNC6(&pdev->dev, 0, 0, "reset", &ddata->resb_gpio);
	if (r)
		return r;

	/* lcd MO */
	r = FUNC6(&pdev->dev, 0, 0, "mode", &ddata->mo_gpio);
	if (r)
		return r;

	/* lcd LR */
	r = FUNC6(&pdev->dev, 1, 1, "mode", &ddata->lr_gpio);
	if (r)
		return r;

	/* lcd UD */
	r = FUNC6(&pdev->dev, 2, 1, "mode", &ddata->ud_gpio);
	if (r)
		return r;

	in = FUNC4(node);
	if (FUNC0(in)) {
		FUNC2(&pdev->dev, "failed to find video source\n");
		return FUNC1(in);
	}

	ddata->in = in;

	return 0;
}