#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pinctrl_desc {scalar_t__ npins; scalar_t__ pins; int /*<<< orphan*/  name; } ;
struct imx1_pinctrl_soc_info {TYPE_1__* dev; scalar_t__ npins; scalar_t__ pins; } ;
struct imx1_pinctrl {int /*<<< orphan*/  pctl; TYPE_1__* dev; struct imx1_pinctrl_soc_info* info; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct imx1_pinctrl* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct pinctrl_desc*,struct imx1_pinctrl*) ; 
 struct pinctrl_desc imx1_pinctrl_desc ; 
 int FUNC8 (struct platform_device*,struct imx1_pinctrl*,struct imx1_pinctrl_soc_info*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct imx1_pinctrl*) ; 
 int /*<<< orphan*/  FUNC13 (struct resource*) ; 

int FUNC14(struct platform_device *pdev,
		      struct imx1_pinctrl_soc_info *info)
{
	struct imx1_pinctrl *ipctl;
	struct resource *res;
	struct pinctrl_desc *pctl_desc;
	int ret;

	if (!info || !info->pins || !info->npins) {
		FUNC2(&pdev->dev, "wrong pinctrl info\n");
		return -EINVAL;
	}
	info->dev = &pdev->dev;

	/* Create state holders etc for this driver */
	ipctl = FUNC6(&pdev->dev, sizeof(*ipctl), GFP_KERNEL);
	if (!ipctl)
		return -ENOMEM;

	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENOENT;

	ipctl->base = FUNC5(&pdev->dev, res->start,
			FUNC13(res));
	if (!ipctl->base)
		return -ENOMEM;

	pctl_desc = &imx1_pinctrl_desc;
	pctl_desc->name = FUNC4(&pdev->dev);
	pctl_desc->pins = info->pins;
	pctl_desc->npins = info->npins;

	ret = FUNC8(pdev, ipctl, info);
	if (ret) {
		FUNC2(&pdev->dev, "fail to probe dt properties\n");
		return ret;
	}

	ipctl->info = info;
	ipctl->dev = info->dev;
	FUNC12(pdev, ipctl);
	ipctl->pctl = FUNC7(&pdev->dev, pctl_desc, ipctl);
	if (FUNC0(ipctl->pctl)) {
		FUNC2(&pdev->dev, "could not register IMX pinctrl driver\n");
		return FUNC1(ipctl->pctl);
	}

	ret = FUNC9(pdev->dev.of_node, NULL, NULL, &pdev->dev);
	if (ret) {
		FUNC10(ipctl->pctl);
		FUNC2(&pdev->dev, "Failed to populate subdevices\n");
		return ret;
	}

	FUNC3(&pdev->dev, "initialized IMX pinctrl driver\n");

	return 0;
}