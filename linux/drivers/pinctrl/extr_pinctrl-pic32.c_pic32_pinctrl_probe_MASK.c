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
struct pic32_pinctrl {int /*<<< orphan*/  pctldev; void* npins; void* pins; void* nbanks; void* gpio_banks; void* ngroups; void* groups; void* nfunctions; void* functions; int /*<<< orphan*/  clk; int /*<<< orphan*/  reg_base; int /*<<< orphan*/ * dev; } ;
struct TYPE_3__ {void* num_custom_params; void* custom_params; void* npins; void* pins; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct pic32_pinctrl*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct resource*) ; 
 struct pic32_pinctrl* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,struct pic32_pinctrl*) ; 
 void* pic32_functions ; 
 void* pic32_gpio_banks ; 
 void* pic32_groups ; 
 void* pic32_mpp_bindings ; 
 TYPE_1__ pic32_pinctrl_desc ; 
 void* pic32_pins ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct pic32_pinctrl *pctl;
	struct resource *res;
	int ret;

	pctl = FUNC8(&pdev->dev, sizeof(*pctl), GFP_KERNEL);
	if (!pctl)
		return -ENOMEM;
	pctl->dev = &pdev->dev;
	FUNC5(&pdev->dev, pctl);

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	pctl->reg_base = FUNC7(&pdev->dev, res);
	if (FUNC1(pctl->reg_base))
		return FUNC2(pctl->reg_base);

	pctl->clk = FUNC6(&pdev->dev, NULL);
	if (FUNC1(pctl->clk)) {
		ret = FUNC2(pctl->clk);
		FUNC4(&pdev->dev, "clk get failed\n");
		return ret;
	}

	ret = FUNC3(pctl->clk);
	if (ret) {
		FUNC4(&pdev->dev, "clk enable failed\n");
		return ret;
	}

	pctl->pins = pic32_pins;
	pctl->npins = FUNC0(pic32_pins);
	pctl->functions = pic32_functions;
	pctl->nfunctions = FUNC0(pic32_functions);
	pctl->groups = pic32_groups;
	pctl->ngroups = FUNC0(pic32_groups);
	pctl->gpio_banks = pic32_gpio_banks;
	pctl->nbanks = FUNC0(pic32_gpio_banks);

	pic32_pinctrl_desc.pins = pctl->pins;
	pic32_pinctrl_desc.npins = pctl->npins;
	pic32_pinctrl_desc.custom_params = pic32_mpp_bindings;
	pic32_pinctrl_desc.num_custom_params = FUNC0(pic32_mpp_bindings);

	pctl->pctldev = FUNC9(&pdev->dev, &pic32_pinctrl_desc,
					      pctl);
	if (FUNC1(pctl->pctldev)) {
		FUNC4(&pdev->dev, "Failed to register pinctrl device\n");
		return FUNC2(pctl->pctldev);
	}

	return 0;
}