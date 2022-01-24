#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int npins; struct pinctrl_pin_desc* pins; } ;
struct rza2_pinctrl_priv {unsigned int npins; int /*<<< orphan*/  dev; int /*<<< orphan*/  pctl; TYPE_1__ desc; struct pinctrl_pin_desc* pins; } ;
struct pinctrl_pin_desc {unsigned int number; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct pinctrl_pin_desc* FUNC1 (int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,struct rza2_pinctrl_priv*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * rza2_gpio_names ; 
 int FUNC4 (struct rza2_pinctrl_priv*) ; 

__attribute__((used)) static int FUNC5(struct rza2_pinctrl_priv *priv)
{
	struct pinctrl_pin_desc *pins;
	unsigned int i;
	int ret;

	pins = FUNC1(priv->dev, priv->npins, sizeof(*pins), GFP_KERNEL);
	if (!pins)
		return -ENOMEM;

	priv->pins = pins;
	priv->desc.pins = pins;
	priv->desc.npins = priv->npins;

	for (i = 0; i < priv->npins; i++) {
		pins[i].number = i;
		pins[i].name = rza2_gpio_names[i];
	}

	ret = FUNC2(priv->dev, &priv->desc, priv,
					     &priv->pctl);
	if (ret) {
		FUNC0(priv->dev, "pinctrl registration failed\n");
		return ret;
	}

	ret = FUNC3(priv->pctl);
	if (ret) {
		FUNC0(priv->dev, "pinctrl enable failed\n");
		return ret;
	}

	ret = FUNC4(priv);
	if (ret) {
		FUNC0(priv->dev, "GPIO registration failed\n");
		return ret;
	}

	return 0;
}