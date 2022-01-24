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
typedef  struct device_node* u32 ;
struct stm32_pinctrl_group {int /*<<< orphan*/  name; } ;
struct stm32_pinctrl {int /*<<< orphan*/  dev; } ;
struct property {int length; } ;
struct pinctrl_map {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PIN_MAP_TYPE_CONFIGS_GROUP ; 
 struct device_node* FUNC0 (struct device_node*) ; 
 struct device_node* FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*) ; 
 struct property* FUNC4 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct device_node*,char*,int,struct device_node**) ; 
 int FUNC6 (struct device_node*,struct pinctrl_dev*,unsigned long**,unsigned int*) ; 
 struct stm32_pinctrl* FUNC7 (struct pinctrl_dev*) ; 
 int FUNC8 (struct pinctrl_dev*,struct pinctrl_map**,unsigned int*,unsigned int*,int /*<<< orphan*/ ,unsigned long*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct pinctrl_dev*,struct pinctrl_map**,unsigned int*,unsigned int*,unsigned int) ; 
 int FUNC10 (struct stm32_pinctrl*,struct device_node*,struct device_node*,struct stm32_pinctrl_group*,struct pinctrl_map**,unsigned int*,unsigned int*) ; 
 struct stm32_pinctrl_group* FUNC11 (struct stm32_pinctrl*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC12 (struct stm32_pinctrl*,struct device_node*,struct device_node*) ; 

__attribute__((used)) static int FUNC13(struct pinctrl_dev *pctldev,
				      struct device_node *node,
				      struct pinctrl_map **map,
				      unsigned *reserved_maps,
				      unsigned *num_maps)
{
	struct stm32_pinctrl *pctl;
	struct stm32_pinctrl_group *grp;
	struct property *pins;
	u32 pinfunc, pin, func;
	unsigned long *configs;
	unsigned int num_configs;
	bool has_config = 0;
	unsigned reserve = 0;
	int num_pins, num_funcs, maps_per_pin, i, err = 0;

	pctl = FUNC7(pctldev);

	pins = FUNC4(node, "pinmux", NULL);
	if (!pins) {
		FUNC2(pctl->dev, "missing pins property in node %pOFn .\n",
				node);
		return -EINVAL;
	}

	err = FUNC6(node, pctldev, &configs,
		&num_configs);
	if (err)
		return err;

	if (num_configs)
		has_config = 1;

	num_pins = pins->length / sizeof(u32);
	num_funcs = num_pins;
	maps_per_pin = 0;
	if (num_funcs)
		maps_per_pin++;
	if (has_config && num_pins >= 1)
		maps_per_pin++;

	if (!num_pins || !maps_per_pin) {
		err = -EINVAL;
		goto exit;
	}

	reserve = num_pins * maps_per_pin;

	err = FUNC9(pctldev, map,
			reserved_maps, num_maps, reserve);
	if (err)
		goto exit;

	for (i = 0; i < num_pins; i++) {
		err = FUNC5(node, "pinmux",
				i, &pinfunc);
		if (err)
			goto exit;

		pin = FUNC1(pinfunc);
		func = FUNC0(pinfunc);

		if (!FUNC12(pctl, pin, func)) {
			FUNC2(pctl->dev, "invalid function.\n");
			err = -EINVAL;
			goto exit;
		}

		grp = FUNC11(pctl, pin);
		if (!grp) {
			FUNC2(pctl->dev, "unable to match pin %d to group\n",
					pin);
			err = -EINVAL;
			goto exit;
		}

		err = FUNC10(pctl, pin, func, grp, map,
				reserved_maps, num_maps);
		if (err)
			goto exit;

		if (has_config) {
			err = FUNC8(pctldev, map,
					reserved_maps, num_maps, grp->name,
					configs, num_configs,
					PIN_MAP_TYPE_CONFIGS_GROUP);
			if (err)
				goto exit;
		}
	}

exit:
	FUNC3(configs);
	return err;
}