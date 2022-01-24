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
struct st_pinctrl {int nbanks; TYPE_1__* banks; int /*<<< orphan*/  pctl; TYPE_2__* dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct pinctrl_desc {int /*<<< orphan*/  name; int /*<<< orphan*/ * confops; int /*<<< orphan*/ * pmxops; int /*<<< orphan*/ * pctlops; int /*<<< orphan*/  owner; } ;
struct TYPE_6__ {int /*<<< orphan*/  range; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 void* FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct pinctrl_desc*,struct st_pinctrl*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct st_pinctrl*) ; 
 int /*<<< orphan*/  st_confops ; 
 int FUNC8 (struct platform_device*,struct pinctrl_desc*,struct st_pinctrl*) ; 
 int /*<<< orphan*/  st_pctlops ; 
 int /*<<< orphan*/  st_pmxops ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct st_pinctrl *info;
	struct pinctrl_desc *pctl_desc;
	int ret, i;

	if (!pdev->dev.of_node) {
		FUNC2(&pdev->dev, "device node not found.\n");
		return -EINVAL;
	}

	pctl_desc = FUNC4(&pdev->dev, sizeof(*pctl_desc), GFP_KERNEL);
	if (!pctl_desc)
		return -ENOMEM;

	info = FUNC4(&pdev->dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->dev = &pdev->dev;
	FUNC7(pdev, info);
	ret = FUNC8(pdev, pctl_desc, info);
	if (ret)
		return ret;

	pctl_desc->owner	= THIS_MODULE;
	pctl_desc->pctlops	= &st_pctlops;
	pctl_desc->pmxops	= &st_pmxops;
	pctl_desc->confops	= &st_confops;
	pctl_desc->name		= FUNC3(&pdev->dev);

	info->pctl = FUNC5(&pdev->dev, pctl_desc, info);
	if (FUNC0(info->pctl)) {
		FUNC2(&pdev->dev, "Failed pinctrl registration\n");
		return FUNC1(info->pctl);
	}

	for (i = 0; i < info->nbanks; i++)
		FUNC6(info->pctl, &info->banks[i].range);

	return 0;
}