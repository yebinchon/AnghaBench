#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ npins; TYPE_4__* gc; int /*<<< orphan*/  name; scalar_t__ base; scalar_t__ pin_base; scalar_t__ id; } ;
struct rza2_pinctrl_priv {scalar_t__ npins; TYPE_2__* dev; TYPE_1__ gpio_range; int /*<<< orphan*/  pctl; } ;
struct of_phandle_args {scalar_t__* args; } ;
struct device_node {int dummy; } ;
struct TYPE_10__ {scalar_t__ ngpio; int /*<<< orphan*/  label; TYPE_2__* parent; struct device_node* of_node; } ;
struct TYPE_9__ {struct device_node* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_4__ chip ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int FUNC2 (TYPE_2__*,TYPE_4__*,struct rza2_pinctrl_priv*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*,struct device_node*) ; 
 int FUNC4 (struct device_node*,char*,int,int /*<<< orphan*/ ,struct of_phandle_args*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct rza2_pinctrl_priv *priv)
{
	struct device_node *np = priv->dev->of_node;
	struct of_phandle_args of_args;
	int ret;

	chip.label = FUNC3(priv->dev, GFP_KERNEL, "%pOFn", np);
	chip.of_node = np;
	chip.parent = priv->dev;
	chip.ngpio = priv->npins;

	ret = FUNC4(np, "gpio-ranges", 3, 0,
					       &of_args);
	if (ret) {
		FUNC1(priv->dev, "Unable to parse gpio-ranges\n");
		return ret;
	}

	if ((of_args.args[0] != 0) ||
	    (of_args.args[1] != 0) ||
	    (of_args.args[2] != priv->npins)) {
		FUNC1(priv->dev, "gpio-ranges does not match selected SOC\n");
		return -EINVAL;
	}
	priv->gpio_range.id = 0;
	priv->gpio_range.pin_base = priv->gpio_range.base = 0;
	priv->gpio_range.npins = priv->npins;
	priv->gpio_range.name = chip.label;
	priv->gpio_range.gc = &chip;

	/* Register our gpio chip with gpiolib */
	ret = FUNC2(priv->dev, &chip, priv);
	if (ret)
		return ret;

	/* Register pin range with pinctrl core */
	FUNC5(priv->pctl, &priv->gpio_range);

	FUNC0(priv->dev, "Registered gpio controller\n");

	return 0;
}