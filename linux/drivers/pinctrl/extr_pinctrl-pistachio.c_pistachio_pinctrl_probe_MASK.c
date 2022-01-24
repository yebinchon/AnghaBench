#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct pistachio_pinctrl {int /*<<< orphan*/  pctldev; void* npins; void* pins; void* nbanks; void* gpio_banks; void* ngroups; void* groups; void* nfunctions; void* functions; int /*<<< orphan*/  base; int /*<<< orphan*/ * dev; } ;
struct TYPE_3__ {void* npins; void* pins; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct pistachio_pinctrl*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct resource*) ; 
 struct pistachio_pinctrl* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,struct pistachio_pinctrl*) ; 
 void* pistachio_functions ; 
 void* pistachio_gpio_banks ; 
 int FUNC8 (struct pistachio_pinctrl*) ; 
 void* pistachio_groups ; 
 TYPE_1__ pistachio_pinctrl_desc ; 
 void* pistachio_pins ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct pistachio_pinctrl *pctl;
	struct resource *res;

	pctl = FUNC6(&pdev->dev, sizeof(*pctl), GFP_KERNEL);
	if (!pctl)
		return -ENOMEM;
	pctl->dev = &pdev->dev;
	FUNC4(&pdev->dev, pctl);

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	pctl->base = FUNC5(&pdev->dev, res);
	if (FUNC1(pctl->base))
		return FUNC2(pctl->base);

	pctl->pins = pistachio_pins;
	pctl->npins = FUNC0(pistachio_pins);
	pctl->functions = pistachio_functions;
	pctl->nfunctions = FUNC0(pistachio_functions);
	pctl->groups = pistachio_groups;
	pctl->ngroups = FUNC0(pistachio_groups);
	pctl->gpio_banks = pistachio_gpio_banks;
	pctl->nbanks = FUNC0(pistachio_gpio_banks);

	pistachio_pinctrl_desc.pins = pctl->pins;
	pistachio_pinctrl_desc.npins = pctl->npins;

	pctl->pctldev = FUNC7(&pdev->dev, &pistachio_pinctrl_desc,
					      pctl);
	if (FUNC1(pctl->pctldev)) {
		FUNC3(&pdev->dev, "Failed to register pinctrl device\n");
		return FUNC2(pctl->pctldev);
	}

	return FUNC8(pctl);
}