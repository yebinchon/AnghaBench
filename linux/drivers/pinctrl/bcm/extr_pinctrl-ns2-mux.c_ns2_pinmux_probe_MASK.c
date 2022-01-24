#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct pinctrl_pin_desc {TYPE_2__* drv_data; int /*<<< orphan*/  name; int /*<<< orphan*/  number; } ;
struct ns2_pinctrl {void* pctl; void* num_functions; TYPE_2__* functions; void* num_groups; TYPE_2__* groups; void* pinconf_base; int /*<<< orphan*/  base1; void* base0; int /*<<< orphan*/  lock; int /*<<< orphan*/ * dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; int /*<<< orphan*/  pin; } ;
struct TYPE_7__ {unsigned int npins; struct pinctrl_pin_desc* pins; } ;

/* Variables and functions */
 void* FUNC0 (TYPE_2__*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ *,struct resource*) ; 
 struct pinctrl_pin_desc* FUNC6 (int /*<<< orphan*/ *,unsigned int,int,int /*<<< orphan*/ ) ; 
 struct ns2_pinctrl* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ns2_pinctrl*) ; 
 TYPE_2__* ns2_pin_functions ; 
 TYPE_2__* ns2_pin_groups ; 
 TYPE_1__ ns2_pinctrl_desc ; 
 TYPE_2__* ns2_pins ; 
 void* FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,struct ns2_pinctrl*) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct ns2_pinctrl*) ; 
 int /*<<< orphan*/  FUNC12 (struct resource*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct ns2_pinctrl *pinctrl;
	struct resource *res;
	int i, ret;
	struct pinctrl_pin_desc *pins;
	unsigned int num_pins = FUNC0(ns2_pins);

	pinctrl = FUNC7(&pdev->dev, sizeof(*pinctrl), GFP_KERNEL);
	if (!pinctrl)
		return -ENOMEM;

	pinctrl->dev = &pdev->dev;
	FUNC11(pdev, pinctrl);
	FUNC13(&pinctrl->lock);

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	pinctrl->base0 = FUNC5(&pdev->dev, res);
	if (FUNC1(pinctrl->base0))
		return FUNC2(pinctrl->base0);

	res = FUNC10(pdev, IORESOURCE_MEM, 1);
	if (!res)
		return -EINVAL;
	pinctrl->base1 = FUNC4(&pdev->dev, res->start,
					FUNC12(res));
	if (!pinctrl->base1) {
		FUNC3(&pdev->dev, "unable to map I/O space\n");
		return -ENOMEM;
	}

	res = FUNC10(pdev, IORESOURCE_MEM, 2);
	pinctrl->pinconf_base = FUNC5(&pdev->dev, res);
	if (FUNC1(pinctrl->pinconf_base))
		return FUNC2(pinctrl->pinconf_base);

	ret = FUNC8(pinctrl);
	if (ret) {
		FUNC3(&pdev->dev, "unable to initialize IOMUX log\n");
		return ret;
	}

	pins = FUNC6(&pdev->dev, num_pins, sizeof(*pins), GFP_KERNEL);
	if (!pins)
		return -ENOMEM;

	for (i = 0; i < num_pins; i++) {
		pins[i].number = ns2_pins[i].pin;
		pins[i].name = ns2_pins[i].name;
		pins[i].drv_data = &ns2_pins[i];
	}

	pinctrl->groups = ns2_pin_groups;
	pinctrl->num_groups = FUNC0(ns2_pin_groups);
	pinctrl->functions = ns2_pin_functions;
	pinctrl->num_functions = FUNC0(ns2_pin_functions);
	ns2_pinctrl_desc.pins = pins;
	ns2_pinctrl_desc.npins = num_pins;

	pinctrl->pctl = FUNC9(&ns2_pinctrl_desc, &pdev->dev,
			pinctrl);
	if (FUNC1(pinctrl->pctl)) {
		FUNC3(&pdev->dev, "unable to register IOMUX pinctrl\n");
		return FUNC2(pinctrl->pctl);
	}

	return 0;
}