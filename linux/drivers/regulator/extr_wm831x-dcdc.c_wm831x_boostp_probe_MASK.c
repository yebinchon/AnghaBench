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
struct wm831x_pdata {int /*<<< orphan*/ ** dcdc; } ;
struct TYPE_9__ {int id; int enable_mask; int /*<<< orphan*/  enable_reg; int /*<<< orphan*/  owner; int /*<<< orphan*/ * ops; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct wm831x_dcdc {int /*<<< orphan*/  name; int /*<<< orphan*/  regulator; TYPE_3__ desc; int /*<<< orphan*/  base; struct wm831x* wm831x; } ;
struct wm831x {TYPE_1__* dev; int /*<<< orphan*/  regmap; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct regulator_config {int /*<<< orphan*/  regmap; struct wm831x_dcdc* driver_data; int /*<<< orphan*/ * init_data; int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct platform_device {int id; TYPE_1__ dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_REG ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGULATOR_VOLTAGE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  WM831X_DCDC_ENABLE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,...) ; 
 struct wm831x* FUNC5 (int /*<<< orphan*/ ) ; 
 struct wm831x_pdata* FUNC6 (TYPE_1__*) ; 
 struct wm831x_dcdc* FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_3__*,struct regulator_config*) ; 
 int FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct wm831x_dcdc*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,char*) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct wm831x_dcdc*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  wm831x_boostp_ops ; 
 int /*<<< orphan*/  wm831x_dcdc_uv_irq ; 
 int FUNC14 (struct wm831x*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct wm831x *wm831x = FUNC5(pdev->dev.parent);
	struct wm831x_pdata *pdata = FUNC6(wm831x->dev);
	struct regulator_config config = { };
	int id = pdev->id % FUNC0(pdata->dcdc);
	struct wm831x_dcdc *dcdc;
	struct resource *res;
	int ret, irq;

	FUNC3(&pdev->dev, "Probing DCDC%d\n", id + 1);

	if (pdata == NULL || pdata->dcdc[id] == NULL)
		return -ENODEV;

	dcdc = FUNC7(&pdev->dev, sizeof(struct wm831x_dcdc), GFP_KERNEL);
	if (!dcdc)
		return -ENOMEM;

	dcdc->wm831x = wm831x;

	res = FUNC11(pdev, IORESOURCE_REG, 0);
	if (res == NULL) {
		FUNC4(&pdev->dev, "No REG resource\n");
		return -EINVAL;
	}
	dcdc->base = res->start;

	FUNC13(dcdc->name, sizeof(dcdc->name), "DCDC%d", id + 1);
	dcdc->desc.name = dcdc->name;
	dcdc->desc.id = id;
	dcdc->desc.type = REGULATOR_VOLTAGE;
	dcdc->desc.ops = &wm831x_boostp_ops;
	dcdc->desc.owner = THIS_MODULE;
	dcdc->desc.enable_reg = WM831X_DCDC_ENABLE;
	dcdc->desc.enable_mask = 1 << id;

	config.dev = pdev->dev.parent;
	if (pdata)
		config.init_data = pdata->dcdc[id];
	config.driver_data = dcdc;
	config.regmap = wm831x->regmap;

	dcdc->regulator = FUNC8(&pdev->dev, &dcdc->desc,
						  &config);
	if (FUNC1(dcdc->regulator)) {
		ret = FUNC2(dcdc->regulator);
		FUNC4(wm831x->dev, "Failed to register DCDC%d: %d\n",
			id + 1, ret);
		return ret;
	}

	irq = FUNC14(wm831x, FUNC10(pdev, "UV"));
	ret = FUNC9(&pdev->dev, irq, NULL,
					wm831x_dcdc_uv_irq,
					IRQF_TRIGGER_RISING | IRQF_ONESHOT,
					dcdc->name,
					dcdc);
	if (ret != 0) {
		FUNC4(&pdev->dev, "Failed to request UV IRQ %d: %d\n",
			irq, ret);
		return ret;
	}

	FUNC12(pdev, dcdc);

	return 0;
}