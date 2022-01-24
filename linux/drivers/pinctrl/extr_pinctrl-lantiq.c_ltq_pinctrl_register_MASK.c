#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct pinctrl_desc {int /*<<< orphan*/ * pmxops; int /*<<< orphan*/ * pctlops; } ;
struct ltq_pinmux_info {int /*<<< orphan*/  pctrl; int /*<<< orphan*/ * dev; struct pinctrl_desc* desc; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct pinctrl_desc*,struct ltq_pinmux_info*) ; 
 int /*<<< orphan*/  ltq_pctrl_ops ; 
 int /*<<< orphan*/  ltq_pmx_ops ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct ltq_pinmux_info*) ; 

int FUNC5(struct platform_device *pdev,
				struct ltq_pinmux_info *info)
{
	struct pinctrl_desc *desc;

	if (!info)
		return -EINVAL;
	desc = info->desc;
	desc->pctlops = &ltq_pctrl_ops;
	desc->pmxops = &ltq_pmx_ops;
	info->dev = &pdev->dev;

	info->pctrl = FUNC3(&pdev->dev, desc, info);
	if (FUNC0(info->pctrl)) {
		FUNC2(&pdev->dev, "failed to register LTQ pinmux driver\n");
		return FUNC1(info->pctrl);
	}
	FUNC4(pdev, info);
	return 0;
}