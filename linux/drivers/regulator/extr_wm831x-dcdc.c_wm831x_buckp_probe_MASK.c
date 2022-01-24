#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct wm831x_pdata {int wm831x_num; int /*<<< orphan*/ * dcdc; } ;
struct TYPE_9__ {int id; int enable_mask; int min_uV; int uV_step; int /*<<< orphan*/  enable_reg; int /*<<< orphan*/  vsel_mask; scalar_t__ vsel_reg; int /*<<< orphan*/  owner; int /*<<< orphan*/ * ops; scalar_t__ n_voltages; int /*<<< orphan*/  type; int /*<<< orphan*/  supply_name; int /*<<< orphan*/  name; } ;
struct wm831x_dcdc {int /*<<< orphan*/  name; int /*<<< orphan*/  regulator; TYPE_3__ desc; scalar_t__ base; int /*<<< orphan*/  supply_name; struct wm831x* wm831x; } ;
struct wm831x {TYPE_1__* dev; int /*<<< orphan*/  regmap; } ;
struct resource {scalar_t__ start; } ;
struct regulator_config {int /*<<< orphan*/  regmap; struct wm831x_dcdc* driver_data; int /*<<< orphan*/  init_data; int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct platform_device {int id; TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_REG ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGULATOR_VOLTAGE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ WM831X_BUCKP_MAX_SELECTOR ; 
 int /*<<< orphan*/  WM831X_DC3_ON_VSEL_MASK ; 
 int /*<<< orphan*/  WM831X_DCDC_ENABLE ; 
 scalar_t__ WM831X_DCDC_ON_CONFIG ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 struct wm831x* FUNC4 (int /*<<< orphan*/ ) ; 
 struct wm831x_pdata* FUNC5 (TYPE_1__*) ; 
 struct wm831x_dcdc* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_3__*,struct regulator_config*) ; 
 int FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct wm831x_dcdc*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,char*) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct wm831x_dcdc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  wm831x_buckp_ops ; 
 int /*<<< orphan*/  wm831x_dcdc_uv_irq ; 
 int FUNC13 (struct wm831x*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct wm831x *wm831x = FUNC4(pdev->dev.parent);
	struct wm831x_pdata *pdata = FUNC5(wm831x->dev);
	struct regulator_config config = { };
	int id;
	struct wm831x_dcdc *dcdc;
	struct resource *res;
	int ret, irq;

	if (pdata && pdata->wm831x_num)
		id = (pdata->wm831x_num * 10) + 1;
	else
		id = 0;
	id = pdev->id - id;

	FUNC2(&pdev->dev, "Probing DCDC%d\n", id + 1);

	dcdc = FUNC6(&pdev->dev, sizeof(struct wm831x_dcdc),
			    GFP_KERNEL);
	if (!dcdc)
		return -ENOMEM;

	dcdc->wm831x = wm831x;

	res = FUNC10(pdev, IORESOURCE_REG, 0);
	if (res == NULL) {
		FUNC3(&pdev->dev, "No REG resource\n");
		ret = -EINVAL;
		goto err;
	}
	dcdc->base = res->start;

	FUNC12(dcdc->name, sizeof(dcdc->name), "DCDC%d", id + 1);
	dcdc->desc.name = dcdc->name;

	FUNC12(dcdc->supply_name, sizeof(dcdc->supply_name),
		 "DC%dVDD", id + 1);
	dcdc->desc.supply_name = dcdc->supply_name;

	dcdc->desc.id = id;
	dcdc->desc.type = REGULATOR_VOLTAGE;
	dcdc->desc.n_voltages = WM831X_BUCKP_MAX_SELECTOR + 1;
	dcdc->desc.ops = &wm831x_buckp_ops;
	dcdc->desc.owner = THIS_MODULE;
	dcdc->desc.vsel_reg = dcdc->base + WM831X_DCDC_ON_CONFIG;
	dcdc->desc.vsel_mask = WM831X_DC3_ON_VSEL_MASK;
	dcdc->desc.enable_reg = WM831X_DCDC_ENABLE;
	dcdc->desc.enable_mask = 1 << id;
	dcdc->desc.min_uV = 850000;
	dcdc->desc.uV_step = 25000;

	config.dev = pdev->dev.parent;
	if (pdata)
		config.init_data = pdata->dcdc[id];
	config.driver_data = dcdc;
	config.regmap = wm831x->regmap;

	dcdc->regulator = FUNC7(&pdev->dev, &dcdc->desc,
						  &config);
	if (FUNC0(dcdc->regulator)) {
		ret = FUNC1(dcdc->regulator);
		FUNC3(wm831x->dev, "Failed to register DCDC%d: %d\n",
			id + 1, ret);
		goto err;
	}

	irq = FUNC13(wm831x, FUNC9(pdev, "UV"));
	ret = FUNC8(&pdev->dev, irq, NULL,
					wm831x_dcdc_uv_irq,
					IRQF_TRIGGER_RISING | IRQF_ONESHOT,
					dcdc->name, dcdc);
	if (ret != 0) {
		FUNC3(&pdev->dev, "Failed to request UV IRQ %d: %d\n",
			irq, ret);
		goto err;
	}

	FUNC11(pdev, dcdc);

	return 0;

err:
	return ret;
}