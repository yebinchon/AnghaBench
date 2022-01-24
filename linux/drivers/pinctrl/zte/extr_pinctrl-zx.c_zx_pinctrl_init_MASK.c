#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct zx_pinctrl_soc_info {int /*<<< orphan*/  npins; int /*<<< orphan*/  pins; } ;
struct zx_pinctrl {int /*<<< orphan*/  pctldev; struct zx_pinctrl_soc_info* info; TYPE_1__* dev; int /*<<< orphan*/  aux_base; int /*<<< orphan*/  base; int /*<<< orphan*/  lock; } ;
struct resource {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pinctrl_desc {int /*<<< orphan*/ * confops; int /*<<< orphan*/ * pmxops; int /*<<< orphan*/ * pctlops; int /*<<< orphan*/  npins; int /*<<< orphan*/  pins; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct resource*) ; 
 void* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct pinctrl_desc*,struct zx_pinctrl*) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*) ; 
 struct device_node* FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct zx_pinctrl*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zx_pinconf_ops ; 
 int FUNC14 (struct platform_device*) ; 
 int /*<<< orphan*/  zx_pinctrl_ops ; 
 int /*<<< orphan*/  zx_pinmux_ops ; 

int FUNC15(struct platform_device *pdev,
		    struct zx_pinctrl_soc_info *info)
{
	struct pinctrl_desc *pctldesc;
	struct zx_pinctrl *zpctl;
	struct device_node *np;
	struct resource *res;
	int ret;

	zpctl = FUNC6(&pdev->dev, sizeof(*zpctl), GFP_KERNEL);
	if (!zpctl)
		return -ENOMEM;

	FUNC13(&zpctl->lock);

	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	zpctl->base = FUNC5(&pdev->dev, res);
	if (FUNC0(zpctl->base))
		return FUNC1(zpctl->base);

	np = FUNC10(pdev->dev.of_node, "zte,auxiliary-controller", 0);
	if (!np) {
		FUNC2(&pdev->dev, "failed to find auxiliary controller\n");
		return -ENODEV;
	}

	zpctl->aux_base = FUNC8(np, 0);
	FUNC9(np);
	if (!zpctl->aux_base)
		return -ENOMEM;

	zpctl->dev = &pdev->dev;
	zpctl->info = info;

	pctldesc = FUNC6(&pdev->dev, sizeof(*pctldesc), GFP_KERNEL);
	if (!pctldesc)
		return -ENOMEM;

	pctldesc->name = FUNC4(&pdev->dev);
	pctldesc->owner = THIS_MODULE;
	pctldesc->pins = info->pins;
	pctldesc->npins = info->npins;
	pctldesc->pctlops = &zx_pinctrl_ops;
	pctldesc->pmxops = &zx_pinmux_ops;
	pctldesc->confops = &zx_pinconf_ops;

	zpctl->pctldev = FUNC7(&pdev->dev, pctldesc, zpctl);
	if (FUNC0(zpctl->pctldev)) {
		ret = FUNC1(zpctl->pctldev);
		FUNC2(&pdev->dev, "failed to register pinctrl: %d\n", ret);
		return ret;
	}

	FUNC12(pdev, zpctl);

	ret = FUNC14(pdev);
	if (ret) {
		FUNC2(&pdev->dev, "failed to build state: %d\n", ret);
		return ret;
	}

	FUNC3(&pdev->dev, "initialized pinctrl driver\n");
	return 0;
}