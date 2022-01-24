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
typedef  int u32 ;
struct property {int length; } ;
struct pinctrl_map {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct device_node {int dummy; } ;
struct bcm2835_pinctrl {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  bcm2835_gpio_pins ; 
 int /*<<< orphan*/  FUNC1 (struct pinctrl_dev*,struct pinctrl_map*,int) ; 
 int FUNC2 (struct bcm2835_pinctrl*,struct device_node*,int,int,struct pinctrl_map**) ; 
 int FUNC3 (struct bcm2835_pinctrl*,struct device_node*,int,int,struct pinctrl_map**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct device_node*,...) ; 
 struct pinctrl_map* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 struct property* FUNC6 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct device_node*,char*,int,int*) ; 
 int FUNC8 (struct pinctrl_dev*,struct device_node*,struct pinctrl_map**,unsigned int*) ; 
 struct bcm2835_pinctrl* FUNC9 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC10(struct pinctrl_dev *pctldev,
		struct device_node *np,
		struct pinctrl_map **map, unsigned int *num_maps)
{
	struct bcm2835_pinctrl *pc = FUNC9(pctldev);
	struct property *pins, *funcs, *pulls;
	int num_pins, num_funcs, num_pulls, maps_per_pin;
	struct pinctrl_map *maps, *cur_map;
	int i, err;
	u32 pin, func, pull;

	/* Check for generic binding in this node */
	err = FUNC8(pctldev, np, map, num_maps);
	if (err || *num_maps)
		return err;

	/* Generic binding did not find anything continue with legacy parse */
	pins = FUNC6(np, "brcm,pins", NULL);
	if (!pins) {
		FUNC4(pc->dev, "%pOF: missing brcm,pins property\n", np);
		return -EINVAL;
	}

	funcs = FUNC6(np, "brcm,function", NULL);
	pulls = FUNC6(np, "brcm,pull", NULL);

	if (!funcs && !pulls) {
		FUNC4(pc->dev,
			"%pOF: neither brcm,function nor brcm,pull specified\n",
			np);
		return -EINVAL;
	}

	num_pins = pins->length / 4;
	num_funcs = funcs ? (funcs->length / 4) : 0;
	num_pulls = pulls ? (pulls->length / 4) : 0;

	if (num_funcs > 1 && num_funcs != num_pins) {
		FUNC4(pc->dev,
			"%pOF: brcm,function must have 1 or %d entries\n",
			np, num_pins);
		return -EINVAL;
	}

	if (num_pulls > 1 && num_pulls != num_pins) {
		FUNC4(pc->dev,
			"%pOF: brcm,pull must have 1 or %d entries\n",
			np, num_pins);
		return -EINVAL;
	}

	maps_per_pin = 0;
	if (num_funcs)
		maps_per_pin++;
	if (num_pulls)
		maps_per_pin++;
	cur_map = maps = FUNC5(num_pins * maps_per_pin, sizeof(*maps),
				 GFP_KERNEL);
	if (!maps)
		return -ENOMEM;

	for (i = 0; i < num_pins; i++) {
		err = FUNC7(np, "brcm,pins", i, &pin);
		if (err)
			goto out;
		if (pin >= FUNC0(bcm2835_gpio_pins)) {
			FUNC4(pc->dev, "%pOF: invalid brcm,pins value %d\n",
				np, pin);
			err = -EINVAL;
			goto out;
		}

		if (num_funcs) {
			err = FUNC7(np, "brcm,function",
					(num_funcs > 1) ? i : 0, &func);
			if (err)
				goto out;
			err = FUNC2(pc, np, pin,
							func, &cur_map);
			if (err)
				goto out;
		}
		if (num_pulls) {
			err = FUNC7(np, "brcm,pull",
					(num_pulls > 1) ? i : 0, &pull);
			if (err)
				goto out;
			err = FUNC3(pc, np, pin,
							pull, &cur_map);
			if (err)
				goto out;
		}
	}

	*map = maps;
	*num_maps = num_pins * maps_per_pin;

	return 0;

out:
	FUNC1(pctldev, maps, num_pins * maps_per_pin);
	return err;
}