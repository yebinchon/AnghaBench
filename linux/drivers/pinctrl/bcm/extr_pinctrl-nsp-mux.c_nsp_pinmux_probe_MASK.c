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
struct pinctrl_pin_desc {int /*<<< orphan*/ * drv_data; int /*<<< orphan*/  name; int /*<<< orphan*/  number; } ;
struct nsp_pinctrl {void* pctl; void* num_functions; TYPE_1__* functions; void* num_groups; TYPE_1__* groups; void* base2; int /*<<< orphan*/  base1; void* base0; int /*<<< orphan*/  lock; int /*<<< orphan*/ * dev; } ;
struct TYPE_8__ {unsigned int npins; struct pinctrl_pin_desc* pins; } ;
struct TYPE_7__ {int /*<<< orphan*/  gpio_select; int /*<<< orphan*/  name; int /*<<< orphan*/  pin; } ;

/* Variables and functions */
 void* FUNC0 (TYPE_1__*) ; 
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
 struct nsp_pinctrl* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,struct nsp_pinctrl*) ; 
 int FUNC9 (struct nsp_pinctrl*) ; 
 TYPE_1__* nsp_pin_functions ; 
 TYPE_1__* nsp_pin_groups ; 
 TYPE_2__ nsp_pinctrl_desc ; 
 TYPE_1__* nsp_pins ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct nsp_pinctrl*) ; 
 int /*<<< orphan*/  FUNC12 (struct resource*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct nsp_pinctrl *pinctrl;
	struct resource *res;
	int i, ret;
	struct pinctrl_pin_desc *pins;
	unsigned int num_pins = FUNC0(nsp_pins);

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
	pinctrl->base2 = FUNC5(&pdev->dev, res);
	if (FUNC1(pinctrl->base2))
		return FUNC2(pinctrl->base2);

	ret = FUNC9(pinctrl);
	if (ret) {
		FUNC3(&pdev->dev, "unable to initialize IOMUX log\n");
		return ret;
	}

	pins = FUNC6(&pdev->dev, num_pins, sizeof(*pins), GFP_KERNEL);
	if (!pins)
		return -ENOMEM;

	for (i = 0; i < num_pins; i++) {
		pins[i].number = nsp_pins[i].pin;
		pins[i].name = nsp_pins[i].name;
		pins[i].drv_data = &nsp_pins[i].gpio_select;
	}

	pinctrl->groups = nsp_pin_groups;
	pinctrl->num_groups = FUNC0(nsp_pin_groups);
	pinctrl->functions = nsp_pin_functions;
	pinctrl->num_functions = FUNC0(nsp_pin_functions);
	nsp_pinctrl_desc.pins = pins;
	nsp_pinctrl_desc.npins = num_pins;

	pinctrl->pctl = FUNC8(&pdev->dev, &nsp_pinctrl_desc,
					 pinctrl);
	if (FUNC1(pinctrl->pctl)) {
		FUNC3(&pdev->dev, "unable to register nsp IOMUX pinctrl\n");
		return FUNC2(pinctrl->pctl);
	}

	return 0;
}