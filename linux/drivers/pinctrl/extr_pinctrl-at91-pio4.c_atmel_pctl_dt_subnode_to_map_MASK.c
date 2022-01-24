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
typedef  int /*<<< orphan*/  u32 ;
struct property {int length; } ;
struct pinctrl_map {int dummy; } ;
struct pinctrl_dev {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PIN_MAP_TYPE_CONFIGS_GROUP ; 
 int FUNC0 (struct pinctrl_dev*,struct device_node*,int /*<<< orphan*/ ,char const**,char const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*) ; 
 struct property* FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct device_node*,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct device_node*,struct pinctrl_dev*,unsigned long**,unsigned int*) ; 
 int FUNC6 (struct pinctrl_dev*,struct pinctrl_map**,unsigned int*,unsigned int*,char const*,unsigned long*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pinctrl_dev*,struct pinctrl_map**,unsigned int*,unsigned int*,char const*,char const*) ; 
 int FUNC8 (struct pinctrl_dev*,struct pinctrl_map**,unsigned int*,unsigned int*,unsigned int) ; 

__attribute__((used)) static int FUNC9(struct pinctrl_dev *pctldev,
					struct device_node *np,
					struct pinctrl_map **map,
					unsigned *reserved_maps,
					unsigned *num_maps)
{
	unsigned num_pins, num_configs, reserve;
	unsigned long *configs;
	struct property	*pins;
	u32 pinfunc;
	int ret, i;

	pins = FUNC3(np, "pinmux", NULL);
	if (!pins)
		return -EINVAL;

	ret = FUNC5(np, pctldev, &configs,
					      &num_configs);
	if (ret < 0) {
		FUNC1(pctldev->dev, "%pOF: could not parse node property\n",
			np);
		return ret;
	}

	num_pins = pins->length / sizeof(u32);
	if (!num_pins) {
		FUNC1(pctldev->dev, "no pins found in node %pOF\n", np);
		ret = -EINVAL;
		goto exit;
	}

	/*
	 * Reserve maps, at least there is a mux map and an optional conf
	 * map for each pin.
	 */
	reserve = 1;
	if (num_configs)
		reserve++;
	reserve *= num_pins;
	ret = FUNC8(pctldev, map, reserved_maps, num_maps,
					reserve);
	if (ret < 0)
		goto exit;

	for (i = 0; i < num_pins; i++) {
		const char *group, *func;

		ret = FUNC4(np, "pinmux", i, &pinfunc);
		if (ret)
			goto exit;

		ret = FUNC0(pctldev, np, pinfunc, &group,
					       &func);
		if (ret)
			goto exit;

		FUNC7(pctldev, map, reserved_maps, num_maps,
					  group, func);

		if (num_configs) {
			ret = FUNC6(pctldev, map,
					reserved_maps, num_maps, group,
					configs, num_configs,
					PIN_MAP_TYPE_CONFIGS_GROUP);
			if (ret < 0)
				goto exit;
		}
	}

exit:
	FUNC2(configs);
	return ret;
}