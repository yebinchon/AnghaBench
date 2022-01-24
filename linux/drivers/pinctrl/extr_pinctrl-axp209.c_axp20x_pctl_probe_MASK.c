#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct pinctrl_desc {int /*<<< orphan*/ * pmxops; int /*<<< orphan*/ * pctlops; int /*<<< orphan*/  npins; TYPE_1__* pins; void* owner; void* name; } ;
struct TYPE_7__ {int base; int can_sleep; int /*<<< orphan*/  ngpio; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  set; int /*<<< orphan*/  get_direction; int /*<<< orphan*/  get; void* owner; void* label; struct device* parent; int /*<<< orphan*/  free; int /*<<< orphan*/  request; } ;
struct axp20x_pctl {TYPE_2__* desc; TYPE_3__ chip; int /*<<< orphan*/  pctl_dev; struct device* dev; int /*<<< orphan*/  regmap; } ;
struct axp20x_dev {int /*<<< orphan*/  regmap; } ;
struct TYPE_6__ {int /*<<< orphan*/  npins; TYPE_1__* pins; } ;
struct TYPE_5__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* THIS_MODULE ; 
 int FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  axp20x_gpio_get ; 
 int /*<<< orphan*/  axp20x_gpio_get_direction ; 
 int /*<<< orphan*/  axp20x_gpio_input ; 
 int /*<<< orphan*/  axp20x_gpio_output ; 
 int /*<<< orphan*/  axp20x_gpio_set ; 
 int /*<<< orphan*/  axp20x_pctrl_ops ; 
 int /*<<< orphan*/  axp20x_pmx_ops ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct axp20x_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 void* FUNC6 (struct device*) ; 
 int FUNC7 (struct device*,TYPE_3__*,struct axp20x_pctl*) ; 
 void* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,struct pinctrl_desc*,struct axp20x_pctl*) ; 
 int FUNC10 (TYPE_3__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpiochip_generic_free ; 
 int /*<<< orphan*/  gpiochip_generic_request ; 
 TYPE_2__* FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct axp20x_pctl*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct axp20x_dev *axp20x = FUNC4(pdev->dev.parent);
	struct axp20x_pctl *pctl;
	struct device *dev = &pdev->dev;
	struct pinctrl_desc *pctrl_desc;
	int ret;

	if (!FUNC12(pdev->dev.of_node))
		return -ENODEV;

	if (!axp20x) {
		FUNC3(&pdev->dev, "Parent drvdata not set\n");
		return -EINVAL;
	}

	pctl = FUNC8(&pdev->dev, sizeof(*pctl), GFP_KERNEL);
	if (!pctl)
		return -ENOMEM;

	pctl->chip.base			= -1;
	pctl->chip.can_sleep		= true;
	pctl->chip.request		= gpiochip_generic_request;
	pctl->chip.free			= gpiochip_generic_free;
	pctl->chip.parent		= &pdev->dev;
	pctl->chip.label		= FUNC6(&pdev->dev);
	pctl->chip.owner		= THIS_MODULE;
	pctl->chip.get			= axp20x_gpio_get;
	pctl->chip.get_direction	= axp20x_gpio_get_direction;
	pctl->chip.set			= axp20x_gpio_set;
	pctl->chip.direction_input	= axp20x_gpio_input;
	pctl->chip.direction_output	= axp20x_gpio_output;

	pctl->desc = FUNC11(dev);

	pctl->chip.ngpio		= pctl->desc->npins;

	pctl->regmap = axp20x->regmap;
	pctl->dev = &pdev->dev;

	FUNC13(pdev, pctl);

	ret = FUNC2(pdev);
	if (ret) {
		FUNC3(&pdev->dev, "failed to build groups\n");
		return ret;
	}

	pctrl_desc = FUNC8(&pdev->dev, sizeof(*pctrl_desc), GFP_KERNEL);
	if (!pctrl_desc)
		return -ENOMEM;

	pctrl_desc->name = FUNC6(&pdev->dev);
	pctrl_desc->owner = THIS_MODULE;
	pctrl_desc->pins = pctl->desc->pins;
	pctrl_desc->npins = pctl->desc->npins;
	pctrl_desc->pctlops = &axp20x_pctrl_ops;
	pctrl_desc->pmxops = &axp20x_pmx_ops;

	pctl->pctl_dev = FUNC9(&pdev->dev, pctrl_desc, pctl);
	if (FUNC0(pctl->pctl_dev)) {
		FUNC3(&pdev->dev, "couldn't register pinctrl driver\n");
		return FUNC1(pctl->pctl_dev);
	}

	ret = FUNC7(&pdev->dev, &pctl->chip, pctl);
	if (ret) {
		FUNC3(&pdev->dev, "Failed to register GPIO chip\n");
		return ret;
	}

	ret = FUNC10(&pctl->chip, FUNC6(&pdev->dev),
				     pctl->desc->pins->number,
				     pctl->desc->pins->number,
				     pctl->desc->npins);
	if (ret) {
		FUNC3(&pdev->dev, "failed to add pin range\n");
		return ret;
	}

	FUNC5(&pdev->dev, "AXP209 pinctrl and GPIO driver loaded\n");

	return 0;
}