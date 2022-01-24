#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uniphier_pinctrl_socdata {scalar_t__ npins; scalar_t__ pins; int /*<<< orphan*/  functions_count; int /*<<< orphan*/  functions; int /*<<< orphan*/  groups_count; int /*<<< orphan*/  groups; } ;
struct TYPE_4__ {int /*<<< orphan*/  owner; int /*<<< orphan*/ * confops; int /*<<< orphan*/ * pmxops; int /*<<< orphan*/ * pctlops; scalar_t__ npins; scalar_t__ pins; int /*<<< orphan*/  name; } ;
struct uniphier_pinctrl_priv {int /*<<< orphan*/  pctldev; TYPE_2__ pctldesc; struct uniphier_pinctrl_socdata const* socdata; int /*<<< orphan*/  regmap; } ;
struct device {TYPE_1__* driver; int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct uniphier_pinctrl_priv* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,TYPE_2__*,struct uniphier_pinctrl_priv*) ; 
 struct device_node* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct uniphier_pinctrl_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 int /*<<< orphan*/  uniphier_confops ; 
 int /*<<< orphan*/  uniphier_pctlops ; 
 int FUNC9 (struct device*,struct uniphier_pinctrl_priv*) ; 
 int /*<<< orphan*/  uniphier_pmxops ; 

int FUNC10(struct platform_device *pdev,
			   const struct uniphier_pinctrl_socdata *socdata)
{
	struct device *dev = &pdev->dev;
	struct uniphier_pinctrl_priv *priv;
	struct device_node *parent;
	int ret;

	if (!socdata ||
	    !socdata->pins || !socdata->npins ||
	    !socdata->groups || !socdata->groups_count ||
	    !socdata->functions || !socdata->functions_count) {
		FUNC2(dev, "pinctrl socdata lacks necessary members\n");
		return -EINVAL;
	}

	priv = FUNC3(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	parent = FUNC5(dev->of_node);
	priv->regmap = FUNC8(parent);
	FUNC6(parent);

	if (FUNC0(priv->regmap)) {
		FUNC2(dev, "failed to get regmap\n");
		return FUNC1(priv->regmap);
	}

	priv->socdata = socdata;
	priv->pctldesc.name = dev->driver->name;
	priv->pctldesc.pins = socdata->pins;
	priv->pctldesc.npins = socdata->npins;
	priv->pctldesc.pctlops = &uniphier_pctlops;
	priv->pctldesc.pmxops = &uniphier_pmxops;
	priv->pctldesc.confops = &uniphier_confops;
	priv->pctldesc.owner = dev->driver->owner;

	ret = FUNC9(dev, priv);
	if (ret)
		return ret;

	priv->pctldev = FUNC4(dev, &priv->pctldesc, priv);
	if (FUNC0(priv->pctldev)) {
		FUNC2(dev, "failed to register UniPhier pinctrl driver\n");
		return FUNC1(priv->pctldev);
	}

	FUNC7(pdev, priv);

	return 0;
}