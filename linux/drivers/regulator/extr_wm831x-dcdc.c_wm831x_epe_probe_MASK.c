#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wm831x_pdata {int /*<<< orphan*/ * epe; } ;
struct TYPE_6__ {int id; int enable_mask; int /*<<< orphan*/  enable_reg; int /*<<< orphan*/  owner; int /*<<< orphan*/  type; int /*<<< orphan*/ * ops; int /*<<< orphan*/  name; } ;
struct wm831x_dcdc {int /*<<< orphan*/  regulator; TYPE_2__ desc; int /*<<< orphan*/  name; struct wm831x* wm831x; } ;
struct wm831x {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
struct regulator_config {int /*<<< orphan*/  regmap; struct wm831x_dcdc* driver_data; int /*<<< orphan*/  init_data; int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct platform_device {int id; TYPE_1__ dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGULATOR_VOLTAGE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  WM831X_DCDC_ENABLE ; 
 int WM831X_EPE_BASE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int) ; 
 struct wm831x* FUNC5 (int /*<<< orphan*/ ) ; 
 struct wm831x_pdata* FUNC6 (int /*<<< orphan*/ ) ; 
 struct wm831x_dcdc* FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*,struct regulator_config*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct wm831x_dcdc*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  wm831x_epe_ops ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct wm831x *wm831x = FUNC5(pdev->dev.parent);
	struct wm831x_pdata *pdata = FUNC6(wm831x->dev);
	struct regulator_config config = { };
	int id = pdev->id % FUNC0(pdata->epe);
	struct wm831x_dcdc *dcdc;
	int ret;

	FUNC3(&pdev->dev, "Probing EPE%d\n", id + 1);

	dcdc = FUNC7(&pdev->dev, sizeof(struct wm831x_dcdc), GFP_KERNEL);
	if (!dcdc)
		return -ENOMEM;

	dcdc->wm831x = wm831x;

	/* For current parts this is correct; probably need to revisit
	 * in future.
	 */
	FUNC10(dcdc->name, sizeof(dcdc->name), "EPE%d", id + 1);
	dcdc->desc.name = dcdc->name;
	dcdc->desc.id = id + WM831X_EPE_BASE; /* Offset in DCDC registers */
	dcdc->desc.ops = &wm831x_epe_ops;
	dcdc->desc.type = REGULATOR_VOLTAGE;
	dcdc->desc.owner = THIS_MODULE;
	dcdc->desc.enable_reg = WM831X_DCDC_ENABLE;
	dcdc->desc.enable_mask = 1 << dcdc->desc.id;

	config.dev = pdev->dev.parent;
	if (pdata)
		config.init_data = pdata->epe[id];
	config.driver_data = dcdc;
	config.regmap = wm831x->regmap;

	dcdc->regulator = FUNC8(&pdev->dev, &dcdc->desc,
						  &config);
	if (FUNC1(dcdc->regulator)) {
		ret = FUNC2(dcdc->regulator);
		FUNC4(wm831x->dev, "Failed to register EPE%d: %d\n",
			id + 1, ret);
		goto err;
	}

	FUNC9(pdev, dcdc);

	return 0;

err:
	return ret;
}