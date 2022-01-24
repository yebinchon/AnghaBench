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
struct samsung_pinctrl_drv_data {struct samsung_pin_ctrl const* retention_ctrl; int /*<<< orphan*/  irq; struct device* dev; } ;
struct samsung_pin_ctrl {int /*<<< orphan*/  (* eint_wkup_init ) (struct samsung_pinctrl_drv_data*) ;int /*<<< orphan*/  (* eint_gpio_init ) (struct samsung_pinctrl_drv_data*) ;TYPE_1__* retention_data; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {struct samsung_pin_ctrl const* (* init ) (struct samsung_pinctrl_drv_data*,TYPE_1__*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 scalar_t__ FUNC0 (struct samsung_pin_ctrl const*) ; 
 int FUNC1 (struct samsung_pin_ctrl const*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct samsung_pinctrl_drv_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC4 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct samsung_pinctrl_drv_data*) ; 
 int FUNC6 (struct platform_device*,struct samsung_pinctrl_drv_data*) ; 
 struct samsung_pin_ctrl* FUNC7 (struct samsung_pinctrl_drv_data*,struct platform_device*) ; 
 int FUNC8 (struct platform_device*,struct samsung_pinctrl_drv_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct samsung_pinctrl_drv_data*) ; 
 struct samsung_pin_ctrl const* FUNC10 (struct samsung_pinctrl_drv_data*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct samsung_pinctrl_drv_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct samsung_pinctrl_drv_data*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct samsung_pinctrl_drv_data *drvdata;
	const struct samsung_pin_ctrl *ctrl;
	struct device *dev = &pdev->dev;
	struct resource *res;
	int ret;

	drvdata = FUNC3(dev, sizeof(*drvdata), GFP_KERNEL);
	if (!drvdata)
		return -ENOMEM;

	ctrl = FUNC7(drvdata, pdev);
	if (FUNC0(ctrl)) {
		FUNC2(&pdev->dev, "driver data not available\n");
		return FUNC1(ctrl);
	}
	drvdata->dev = dev;

	res = FUNC4(pdev, IORESOURCE_IRQ, 0);
	if (res)
		drvdata->irq = res->start;

	if (ctrl->retention_data) {
		drvdata->retention_ctrl = ctrl->retention_data->init(drvdata,
							  ctrl->retention_data);
		if (FUNC0(drvdata->retention_ctrl))
			return FUNC1(drvdata->retention_ctrl);
	}

	ret = FUNC8(pdev, drvdata);
	if (ret)
		return ret;

	ret = FUNC6(pdev, drvdata);
	if (ret) {
		FUNC9(pdev, drvdata);
		return ret;
	}

	if (ctrl->eint_gpio_init)
		ctrl->eint_gpio_init(drvdata);
	if (ctrl->eint_wkup_init)
		ctrl->eint_wkup_init(drvdata);

	FUNC5(pdev, drvdata);

	return 0;
}