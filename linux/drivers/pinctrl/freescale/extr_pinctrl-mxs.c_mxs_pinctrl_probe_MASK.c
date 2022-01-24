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
struct TYPE_8__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct mxs_pinctrl_soc_data {int /*<<< orphan*/  npins; int /*<<< orphan*/  pins; } ;
struct mxs_pinctrl_data {int /*<<< orphan*/  base; int /*<<< orphan*/  pctl; struct mxs_pinctrl_soc_data* soc; TYPE_2__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; int /*<<< orphan*/  npins; int /*<<< orphan*/  pins; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 struct mxs_pinctrl_data* FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__ mxs_pinctrl_desc ; 
 int FUNC6 (struct platform_device*,struct mxs_pinctrl_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*,struct mxs_pinctrl_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct mxs_pinctrl_data*) ; 

int FUNC10(struct platform_device *pdev,
		      struct mxs_pinctrl_soc_data *soc)
{
	struct device_node *np = pdev->dev.of_node;
	struct mxs_pinctrl_data *d;
	int ret;

	d = FUNC4(&pdev->dev, sizeof(*d), GFP_KERNEL);
	if (!d)
		return -ENOMEM;

	d->dev = &pdev->dev;
	d->soc = soc;

	d->base = FUNC7(np, 0);
	if (!d->base)
		return -EADDRNOTAVAIL;

	mxs_pinctrl_desc.pins = d->soc->pins;
	mxs_pinctrl_desc.npins = d->soc->npins;
	mxs_pinctrl_desc.name = FUNC3(&pdev->dev);

	FUNC9(pdev, d);

	ret = FUNC6(pdev, d);
	if (ret) {
		FUNC2(&pdev->dev, "dt probe failed: %d\n", ret);
		goto err;
	}

	d->pctl = FUNC8(&mxs_pinctrl_desc, &pdev->dev, d);
	if (FUNC0(d->pctl)) {
		FUNC2(&pdev->dev, "Couldn't register MXS pinctrl driver\n");
		ret = FUNC1(d->pctl);
		goto err;
	}

	return 0;

err:
	FUNC5(d->base);
	return ret;
}