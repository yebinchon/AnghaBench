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
struct spear_pmx {int /*<<< orphan*/  pctl; struct spear_pinctrl_machdata* machdata; TYPE_2__* dev; int /*<<< orphan*/  vbase; } ;
struct spear_pinctrl_machdata {int /*<<< orphan*/  npins; int /*<<< orphan*/  pins; scalar_t__ modes_supported; } ;
struct resource {int dummy; } ;
struct TYPE_8__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  npins; int /*<<< orphan*/  pins; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct resource*) ; 
 struct spear_pmx* FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*,struct spear_pmx*) ; 
 scalar_t__ FUNC6 (struct device_node*,char*,int*) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct spear_pmx*) ; 
 scalar_t__ FUNC9 (struct spear_pmx*,int) ; 
 TYPE_1__ spear_pinctrl_desc ; 

int FUNC10(struct platform_device *pdev,
			struct spear_pinctrl_machdata *machdata)
{
	struct device_node *np = pdev->dev.of_node;
	struct resource *res;
	struct spear_pmx *pmx;

	if (!machdata)
		return -ENODEV;

	pmx = FUNC4(&pdev->dev, sizeof(*pmx), GFP_KERNEL);
	if (!pmx)
		return -ENOMEM;

	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	pmx->vbase = FUNC3(&pdev->dev, res);
	if (FUNC0(pmx->vbase))
		return FUNC1(pmx->vbase);

	pmx->dev = &pdev->dev;
	pmx->machdata = machdata;

	/* configure mode, if supported by SoC */
	if (machdata->modes_supported) {
		int mode = 0;

		if (FUNC6(np, "st,pinmux-mode", &mode)) {
			FUNC2(&pdev->dev, "OF: pinmux mode not passed\n");
			return -EINVAL;
		}

		if (FUNC9(pmx, mode)) {
			FUNC2(&pdev->dev, "OF: Couldn't configure mode: %x\n",
					mode);
			return -EINVAL;
		}
	}

	FUNC8(pdev, pmx);

	spear_pinctrl_desc.pins = machdata->pins;
	spear_pinctrl_desc.npins = machdata->npins;

	pmx->pctl = FUNC5(&pdev->dev, &spear_pinctrl_desc, pmx);
	if (FUNC0(pmx->pctl)) {
		FUNC2(&pdev->dev, "Couldn't register pinctrl driver\n");
		return FUNC1(pmx->pctl);
	}

	return 0;
}