#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct oxnas_pinctrl_data {int /*<<< orphan*/  desc; TYPE_1__* pctl; } ;
struct oxnas_pinctrl {int /*<<< orphan*/  pctldev; int /*<<< orphan*/  nbanks; int /*<<< orphan*/  gpio_banks; int /*<<< orphan*/  ngroups; int /*<<< orphan*/  groups; int /*<<< orphan*/  nfunctions; int /*<<< orphan*/  functions; int /*<<< orphan*/  regmap; TYPE_2__* dev; } ;
struct of_device_id {struct oxnas_pinctrl_data* data; } ;
struct TYPE_6__ {int /*<<< orphan*/  nbanks; int /*<<< orphan*/  gpio_banks; int /*<<< orphan*/  ngroups; int /*<<< orphan*/  groups; int /*<<< orphan*/  nfunctions; int /*<<< orphan*/  functions; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct oxnas_pinctrl*) ; 
 struct oxnas_pinctrl* FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  oxnas_pinctrl_of_match ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,struct oxnas_pinctrl*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	const struct of_device_id *id;
	const struct oxnas_pinctrl_data *data;
	struct oxnas_pinctrl *pctl;

	id = FUNC5(oxnas_pinctrl_of_match, pdev->dev.of_node);
	if (!id)
		return -ENODEV;

	data = id->data;
	if (!data || !data->pctl || !data->desc)
		return -EINVAL;

	pctl = FUNC4(&pdev->dev, sizeof(*pctl), GFP_KERNEL);
	if (!pctl)
		return -ENOMEM;
	pctl->dev = &pdev->dev;
	FUNC3(&pdev->dev, pctl);

	pctl->regmap = FUNC7(pdev->dev.of_node,
						       "oxsemi,sys-ctrl");
	if (FUNC0(pctl->regmap)) {
		FUNC2(&pdev->dev, "failed to get sys ctrl regmap\n");
		return -ENODEV;
	}

	pctl->functions = data->pctl->functions;
	pctl->nfunctions = data->pctl->nfunctions;
	pctl->groups = data->pctl->groups;
	pctl->ngroups = data->pctl->ngroups;
	pctl->gpio_banks = data->pctl->gpio_banks;
	pctl->nbanks = data->pctl->nbanks;

	pctl->pctldev = FUNC6(data->desc, &pdev->dev, pctl);
	if (FUNC0(pctl->pctldev)) {
		FUNC2(&pdev->dev, "Failed to register pinctrl device\n");
		return FUNC1(pctl->pctldev);
	}

	return 0;
}