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
typedef  scalar_t__ u32 ;
struct property {int length; } ;
struct pinctrl_map {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct mtk_pinctrl_group {int /*<<< orphan*/  name; } ;
struct mtk_pinctrl {int /*<<< orphan*/  dev; TYPE_1__* soc; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {scalar_t__ npins; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  PIN_MAP_TYPE_CONFIGS_GROUP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*) ; 
 int /*<<< orphan*/  mtk_gpio_functions ; 
 int FUNC5 (struct mtk_pinctrl*,scalar_t__,scalar_t__,struct mtk_pinctrl_group*,struct pinctrl_map**,unsigned int*,unsigned int*) ; 
 struct mtk_pinctrl_group* FUNC6 (struct mtk_pinctrl*,scalar_t__) ; 
 struct property* FUNC7 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct device_node*,char*,int,scalar_t__*) ; 
 int FUNC9 (struct device_node*,struct pinctrl_dev*,unsigned long**,unsigned int*) ; 
 struct mtk_pinctrl* FUNC10 (struct pinctrl_dev*) ; 
 int FUNC11 (struct pinctrl_dev*,struct pinctrl_map**,unsigned int*,unsigned int*,int /*<<< orphan*/ ,unsigned long*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct pinctrl_dev*,struct pinctrl_map**,unsigned int*,unsigned int*,unsigned int) ; 

__attribute__((used)) static int FUNC13(struct pinctrl_dev *pctldev,
				       struct device_node *node,
				       struct pinctrl_map **map,
				       unsigned *reserved_maps,
				       unsigned *num_maps)
{
	struct mtk_pinctrl *hw = FUNC10(pctldev);
	int num_pins, num_funcs, maps_per_pin, i, err;
	struct mtk_pinctrl_group *grp;
	unsigned int num_configs;
	bool has_config = false;
	unsigned long *configs;
	u32 pinfunc, pin, func;
	struct property *pins;
	unsigned reserve = 0;

	pins = FUNC7(node, "pinmux", NULL);
	if (!pins) {
		FUNC3(hw->dev, "missing pins property in node %pOFn .\n",
			node);
		return -EINVAL;
	}

	err = FUNC9(node, pctldev, &configs,
					      &num_configs);
	if (err)
		return err;

	if (num_configs)
		has_config = true;

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

	err = FUNC12(pctldev, map, reserved_maps, num_maps,
					reserve);
	if (err < 0)
		goto exit;

	for (i = 0; i < num_pins; i++) {
		err = FUNC8(node, "pinmux", i, &pinfunc);
		if (err)
			goto exit;

		pin = FUNC2(pinfunc);
		func = FUNC1(pinfunc);

		if (pin >= hw->soc->npins ||
		    func >= FUNC0(mtk_gpio_functions)) {
			FUNC3(hw->dev, "invalid pins value.\n");
			err = -EINVAL;
			goto exit;
		}

		grp = FUNC6(hw, pin);
		if (!grp) {
			FUNC3(hw->dev, "unable to match pin %d to group\n",
				pin);
			err = -EINVAL;
			goto exit;
		}

		err = FUNC5(hw, pin, func, grp, map,
						    reserved_maps, num_maps);
		if (err < 0)
			goto exit;

		if (has_config) {
			err = FUNC11(pctldev, map,
							    reserved_maps,
							    num_maps,
							    grp->name,
							    configs,
							    num_configs,
							    PIN_MAP_TYPE_CONFIGS_GROUP);
			if (err < 0)
				goto exit;
		}
	}

	err = 0;

exit:
	FUNC4(configs);
	return err;
}