#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_16__ {void* ngpio; int /*<<< orphan*/  of_node; TYPE_4__* parent; } ;
struct TYPE_15__ {void* npins; void* pins; } ;
struct rk805_pctrl_info {TYPE_2__ gpio_chip; int /*<<< orphan*/  pctl; TYPE_1__ pinctrl_desc; TYPE_10__* rk808; void* pin_cfg; void* num_pin_groups; void* groups; void* num_functions; void* functions; void* num_pins; void* pins; TYPE_4__* dev; } ;
struct TYPE_17__ {TYPE_11__* parent; int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_14__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_13__ {int variant; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
#define  RK805_ID 128 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,...) ; 
 TYPE_10__* FUNC4 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int FUNC6 (TYPE_4__*,TYPE_2__*,struct rk805_pctrl_info*) ; 
 struct rk805_pctrl_info* FUNC7 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_1__*,struct rk805_pctrl_info*) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct rk805_pctrl_info*) ; 
 void* rk805_gpio_cfgs ; 
 TYPE_2__ rk805_gpio_chip ; 
 void* rk805_pin_functions ; 
 void* rk805_pin_groups ; 
 TYPE_1__ rk805_pinctrl_desc ; 
 void* rk805_pins_desc ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct rk805_pctrl_info *pci;
	int ret;

	pci = FUNC7(&pdev->dev, sizeof(*pci), GFP_KERNEL);
	if (!pci)
		return -ENOMEM;

	pci->dev = &pdev->dev;
	pci->dev->of_node = pdev->dev.parent->of_node;
	pci->rk808 = FUNC4(pdev->dev.parent);

	pci->pinctrl_desc = rk805_pinctrl_desc;
	pci->gpio_chip = rk805_gpio_chip;
	pci->gpio_chip.parent = &pdev->dev;
	pci->gpio_chip.of_node = pdev->dev.parent->of_node;

	FUNC10(pdev, pci);

	switch (pci->rk808->variant) {
	case RK805_ID:
		pci->pins = rk805_pins_desc;
		pci->num_pins = FUNC0(rk805_pins_desc);
		pci->functions = rk805_pin_functions;
		pci->num_functions = FUNC0(rk805_pin_functions);
		pci->groups = rk805_pin_groups;
		pci->num_pin_groups = FUNC0(rk805_pin_groups);
		pci->pinctrl_desc.pins = rk805_pins_desc;
		pci->pinctrl_desc.npins = FUNC0(rk805_pins_desc);
		pci->pin_cfg = rk805_gpio_cfgs;
		pci->gpio_chip.ngpio = FUNC0(rk805_gpio_cfgs);
		break;
	default:
		FUNC3(&pdev->dev, "unsupported RK805 ID %lu\n",
			pci->rk808->variant);
		return -EINVAL;
	}

	/* Add gpio chip */
	ret = FUNC6(&pdev->dev, &pci->gpio_chip, pci);
	if (ret < 0) {
		FUNC3(&pdev->dev, "Couldn't add gpiochip\n");
		return ret;
	}

	/* Add pinctrl */
	pci->pctl = FUNC8(&pdev->dev, &pci->pinctrl_desc, pci);
	if (FUNC1(pci->pctl)) {
		FUNC3(&pdev->dev, "Couldn't add pinctrl\n");
		return FUNC2(pci->pctl);
	}

	/* Add pin range */
	ret = FUNC9(&pci->gpio_chip, FUNC5(&pdev->dev),
				     0, 0, pci->gpio_chip.ngpio);
	if (ret < 0) {
		FUNC3(&pdev->dev, "Couldn't add gpiochip pin range\n");
		return ret;
	}

	return 0;
}