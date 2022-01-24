#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct device* parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct pinctrl_dev {int dummy; } ;
struct pinctrl_desc {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct TYPE_4__ {struct pinctrl_dev** maps; } ;
struct aspeed_pinctrl_data {struct pinctrl_dev* scu; TYPE_1__ pinmux; } ;

/* Variables and functions */
 size_t ASPEED_IP_SCU ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct pinctrl_dev*) ; 
 int FUNC1 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 struct pinctrl_dev* FUNC3 (struct pinctrl_desc*,TYPE_2__*,struct aspeed_pinctrl_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct aspeed_pinctrl_data*) ; 
 struct pinctrl_dev* FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct platform_device *pdev,
			 struct pinctrl_desc *pdesc,
			 struct aspeed_pinctrl_data *pdata)
{
	struct device *parent;
	struct pinctrl_dev *pctl;

	parent = pdev->dev.parent;
	if (!parent) {
		FUNC2(&pdev->dev, "No parent for syscon pincontroller\n");
		return -ENODEV;
	}

	pdata->scu = FUNC5(parent->of_node);
	if (FUNC0(pdata->scu)) {
		FUNC2(&pdev->dev, "No regmap for syscon pincontroller parent\n");
		return FUNC1(pdata->scu);
	}

	pdata->pinmux.maps[ASPEED_IP_SCU] = pdata->scu;

	pctl = FUNC3(pdesc, &pdev->dev, pdata);

	if (FUNC0(pctl)) {
		FUNC2(&pdev->dev, "Failed to register pinctrl\n");
		return FUNC1(pctl);
	}

	FUNC4(pdev, pdata);

	return 0;
}