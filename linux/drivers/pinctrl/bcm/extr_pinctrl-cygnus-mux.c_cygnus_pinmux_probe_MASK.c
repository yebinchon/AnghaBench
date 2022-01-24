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
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct pinctrl_pin_desc {int /*<<< orphan*/ * drv_data; int /*<<< orphan*/  name; int /*<<< orphan*/  number; } ;
struct cygnus_pinctrl {void* pctl; void* num_functions; TYPE_2__* functions; void* num_groups; TYPE_2__* groups; void* base1; void* base0; int /*<<< orphan*/  lock; int /*<<< orphan*/ * dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  gpio_mux; int /*<<< orphan*/  name; int /*<<< orphan*/  pin; } ;
struct TYPE_7__ {unsigned int npins; struct pinctrl_pin_desc* pins; } ;

/* Variables and functions */
 void* FUNC0 (TYPE_2__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int FUNC3 (struct cygnus_pinctrl*) ; 
 TYPE_2__* cygnus_pin_functions ; 
 TYPE_2__* cygnus_pin_groups ; 
 TYPE_1__ cygnus_pinctrl_desc ; 
 TYPE_2__* cygnus_pins ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,struct resource*) ; 
 struct pinctrl_pin_desc* FUNC6 (int /*<<< orphan*/ *,unsigned int,int,int /*<<< orphan*/ ) ; 
 struct cygnus_pinctrl* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,struct cygnus_pinctrl*) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct cygnus_pinctrl*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct cygnus_pinctrl *pinctrl;
	struct resource *res;
	int i, ret;
	struct pinctrl_pin_desc *pins;
	unsigned num_pins = FUNC0(cygnus_pins);

	pinctrl = FUNC7(&pdev->dev, sizeof(*pinctrl), GFP_KERNEL);
	if (!pinctrl)
		return -ENOMEM;

	pinctrl->dev = &pdev->dev;
	FUNC10(pdev, pinctrl);
	FUNC11(&pinctrl->lock);

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	pinctrl->base0 = FUNC5(&pdev->dev, res);
	if (FUNC1(pinctrl->base0)) {
		FUNC4(&pdev->dev, "unable to map I/O space\n");
		return FUNC2(pinctrl->base0);
	}

	res = FUNC9(pdev, IORESOURCE_MEM, 1);
	pinctrl->base1 = FUNC5(&pdev->dev, res);
	if (FUNC1(pinctrl->base1)) {
		FUNC4(&pdev->dev, "unable to map I/O space\n");
		return FUNC2(pinctrl->base1);
	}

	ret = FUNC3(pinctrl);
	if (ret) {
		FUNC4(&pdev->dev, "unable to initialize IOMUX log\n");
		return ret;
	}

	pins = FUNC6(&pdev->dev, num_pins, sizeof(*pins), GFP_KERNEL);
	if (!pins)
		return -ENOMEM;

	for (i = 0; i < num_pins; i++) {
		pins[i].number = cygnus_pins[i].pin;
		pins[i].name = cygnus_pins[i].name;
		pins[i].drv_data = &cygnus_pins[i].gpio_mux;
	}

	pinctrl->groups = cygnus_pin_groups;
	pinctrl->num_groups = FUNC0(cygnus_pin_groups);
	pinctrl->functions = cygnus_pin_functions;
	pinctrl->num_functions = FUNC0(cygnus_pin_functions);
	cygnus_pinctrl_desc.pins = pins;
	cygnus_pinctrl_desc.npins = num_pins;

	pinctrl->pctl = FUNC8(&pdev->dev, &cygnus_pinctrl_desc,
			pinctrl);
	if (FUNC1(pinctrl->pctl)) {
		FUNC4(&pdev->dev, "unable to register Cygnus IOMUX pinctrl\n");
		return FUNC2(pinctrl->pctl);
	}

	return 0;
}