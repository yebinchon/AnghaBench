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
struct device {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct pinctrl_dev {int dummy; } ;
struct pinctrl_desc {void* npins; void* pins; } ;
struct TYPE_2__ {int can_sleep; int base; int /*<<< orphan*/  ngpio; int /*<<< orphan*/  of_node; struct device* parent; int /*<<< orphan*/  set; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  free; int /*<<< orphan*/  request; int /*<<< orphan*/  label; } ;
struct lochnagar_pin_priv {TYPE_1__ gpio_chip; struct device* dev; void* npins; void* pins; void* ngroups; void* groups; void* nfuncs; void* funcs; struct lochnagar* lochnagar; } ;
struct lochnagar {int type; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct pinctrl_dev*) ; 
#define  LOCHNAGAR1 129 
 int /*<<< orphan*/  LOCHNAGAR1_PIN_NUM_GPIOS ; 
#define  LOCHNAGAR2 128 
 int /*<<< orphan*/  LOCHNAGAR2_PIN_NUM_GPIOS ; 
 int FUNC2 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 struct lochnagar* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int FUNC6 (struct device*,TYPE_1__*,struct lochnagar_pin_priv*) ; 
 void* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct pinctrl_dev* FUNC8 (struct device*,struct pinctrl_desc*,struct lochnagar_pin_priv*) ; 
 int /*<<< orphan*/  gpiochip_generic_free ; 
 int /*<<< orphan*/  gpiochip_generic_request ; 
 void* lochnagar1_funcs ; 
 void* lochnagar1_groups ; 
 void* lochnagar1_pins ; 
 void* lochnagar2_funcs ; 
 void* lochnagar2_groups ; 
 void* lochnagar2_pins ; 
 int FUNC9 (struct lochnagar_pin_priv*) ; 
 int /*<<< orphan*/  lochnagar_gpio_direction_out ; 
 int /*<<< orphan*/  lochnagar_gpio_set ; 
 struct pinctrl_desc lochnagar_pin_desc ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct lochnagar *lochnagar = FUNC4(pdev->dev.parent);
	struct lochnagar_pin_priv *priv;
	struct pinctrl_desc *desc;
	struct pinctrl_dev *pctl;
	struct device *dev = &pdev->dev;
	int ret;

	priv = FUNC7(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->dev = dev;
	priv->lochnagar = lochnagar;

	desc = FUNC7(dev, sizeof(*desc), GFP_KERNEL);
	if (!desc)
		return -ENOMEM;

	*desc = lochnagar_pin_desc;

	priv->gpio_chip.label = FUNC5(dev);
	priv->gpio_chip.request = gpiochip_generic_request;
	priv->gpio_chip.free = gpiochip_generic_free;
	priv->gpio_chip.direction_output = lochnagar_gpio_direction_out;
	priv->gpio_chip.set = lochnagar_gpio_set;
	priv->gpio_chip.can_sleep = true;
	priv->gpio_chip.parent = dev;
	priv->gpio_chip.base = -1;
#ifdef CONFIG_OF_GPIO
	priv->gpio_chip.of_node = dev->of_node;
#endif

	switch (lochnagar->type) {
	case LOCHNAGAR1:
		priv->funcs = lochnagar1_funcs;
		priv->nfuncs = FUNC0(lochnagar1_funcs);
		priv->pins = lochnagar1_pins;
		priv->npins = FUNC0(lochnagar1_pins);
		priv->groups = lochnagar1_groups;
		priv->ngroups = FUNC0(lochnagar1_groups);

		priv->gpio_chip.ngpio = LOCHNAGAR1_PIN_NUM_GPIOS;
		break;
	case LOCHNAGAR2:
		priv->funcs = lochnagar2_funcs;
		priv->nfuncs = FUNC0(lochnagar2_funcs);
		priv->pins = lochnagar2_pins;
		priv->npins = FUNC0(lochnagar2_pins);
		priv->groups = lochnagar2_groups;
		priv->ngroups = FUNC0(lochnagar2_groups);

		priv->gpio_chip.ngpio = LOCHNAGAR2_PIN_NUM_GPIOS;
		break;
	default:
		FUNC3(dev, "Unknown Lochnagar type: %d\n", lochnagar->type);
		return -EINVAL;
	}

	ret = FUNC9(priv);
	if (ret < 0)
		return ret;

	desc->pins = priv->pins;
	desc->npins = priv->npins;

	pctl = FUNC8(dev, desc, priv);
	if (FUNC1(pctl)) {
		ret = FUNC2(pctl);
		FUNC3(priv->dev, "Failed to register pinctrl: %d\n", ret);
		return ret;
	}

	ret = FUNC6(dev, &priv->gpio_chip, priv);
	if (ret < 0) {
		FUNC3(&pdev->dev, "Failed to register gpiochip: %d\n", ret);
		return ret;
	}

	return 0;
}