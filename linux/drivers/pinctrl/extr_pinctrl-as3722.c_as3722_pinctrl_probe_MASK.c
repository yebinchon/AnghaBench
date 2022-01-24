#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_8__* parent; int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_12__ {int /*<<< orphan*/  of_node; TYPE_4__* parent; } ;
struct as3722_pctrl_info {TYPE_1__ gpio_chip; int /*<<< orphan*/  pctl; void* num_pin_groups; void* pin_groups; void* num_functions; void* functions; void* num_pins; void* pins; int /*<<< orphan*/  as3722; TYPE_4__* dev; } ;
struct TYPE_15__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_14__ {void* npins; void* pins; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  AS3722_PIN_NUM ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ as3722_gpio_chip ; 
 void* as3722_pin_function ; 
 TYPE_5__ as3722_pinctrl_desc ; 
 void* as3722_pingroups ; 
 void* as3722_pins_desc ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 struct as3722_pctrl_info* FUNC6 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_5__*,struct as3722_pctrl_info*) ; 
 int FUNC8 (TYPE_1__*,struct as3722_pctrl_info*) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct as3722_pctrl_info*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct as3722_pctrl_info *as_pci;
	int ret;

	as_pci = FUNC6(&pdev->dev, sizeof(*as_pci), GFP_KERNEL);
	if (!as_pci)
		return -ENOMEM;

	as_pci->dev = &pdev->dev;
	as_pci->dev->of_node = pdev->dev.parent->of_node;
	as_pci->as3722 = FUNC4(pdev->dev.parent);
	FUNC11(pdev, as_pci);

	as_pci->pins = as3722_pins_desc;
	as_pci->num_pins = FUNC0(as3722_pins_desc);
	as_pci->functions = as3722_pin_function;
	as_pci->num_functions = FUNC0(as3722_pin_function);
	as_pci->pin_groups = as3722_pingroups;
	as_pci->num_pin_groups = FUNC0(as3722_pingroups);
	as3722_pinctrl_desc.name = FUNC5(&pdev->dev);
	as3722_pinctrl_desc.pins = as3722_pins_desc;
	as3722_pinctrl_desc.npins = FUNC0(as3722_pins_desc);
	as_pci->pctl = FUNC7(&pdev->dev, &as3722_pinctrl_desc,
					     as_pci);
	if (FUNC1(as_pci->pctl)) {
		FUNC3(&pdev->dev, "Couldn't register pinctrl driver\n");
		return FUNC2(as_pci->pctl);
	}

	as_pci->gpio_chip = as3722_gpio_chip;
	as_pci->gpio_chip.parent = &pdev->dev;
	as_pci->gpio_chip.of_node = pdev->dev.parent->of_node;
	ret = FUNC8(&as_pci->gpio_chip, as_pci);
	if (ret < 0) {
		FUNC3(&pdev->dev, "Couldn't register gpiochip, %d\n", ret);
		return ret;
	}

	ret = FUNC9(&as_pci->gpio_chip, FUNC5(&pdev->dev),
				0, 0, AS3722_PIN_NUM);
	if (ret < 0) {
		FUNC3(&pdev->dev, "Couldn't add pin range, %d\n", ret);
		goto fail_range_add;
	}

	return 0;

fail_range_add:
	FUNC10(&as_pci->gpio_chip);
	return ret;
}