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
struct wmt_pinctrl_data {int nbanks; int /*<<< orphan*/  dev; } ;
struct property {int length; } ;
struct pinctrl_map {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct pinctrl_map* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 struct property* FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct device_node*,char*,int,int*) ; 
 struct wmt_pinctrl_data* FUNC4 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pinctrl_dev*,struct pinctrl_map*,int) ; 
 int FUNC6 (struct wmt_pinctrl_data*,struct device_node*,int,int,struct pinctrl_map**) ; 
 int FUNC7 (struct wmt_pinctrl_data*,struct device_node*,int,int,struct pinctrl_map**) ; 

__attribute__((used)) static int FUNC8(struct pinctrl_dev *pctldev,
				   struct device_node *np,
				   struct pinctrl_map **map,
				   unsigned *num_maps)
{
	struct pinctrl_map *maps, *cur_map;
	struct property *pins, *funcs, *pulls;
	u32 pin, func, pull;
	int num_pins, num_funcs, num_pulls, maps_per_pin;
	int i, err;
	struct wmt_pinctrl_data *data = FUNC4(pctldev);

	pins = FUNC2(np, "wm,pins", NULL);
	if (!pins) {
		FUNC0(data->dev, "missing wmt,pins property\n");
		return -EINVAL;
	}

	funcs = FUNC2(np, "wm,function", NULL);
	pulls = FUNC2(np, "wm,pull", NULL);

	if (!funcs && !pulls) {
		FUNC0(data->dev, "neither wm,function nor wm,pull specified\n");
		return -EINVAL;
	}

	/*
	 * The following lines calculate how many values are defined for each
	 * of the properties.
	 */
	num_pins = pins->length / sizeof(u32);
	num_funcs = funcs ? (funcs->length / sizeof(u32)) : 0;
	num_pulls = pulls ? (pulls->length / sizeof(u32)) : 0;

	if (num_funcs > 1 && num_funcs != num_pins) {
		FUNC0(data->dev, "wm,function must have 1 or %d entries\n",
			num_pins);
		return -EINVAL;
	}

	if (num_pulls > 1 && num_pulls != num_pins) {
		FUNC0(data->dev, "wm,pull must have 1 or %d entries\n",
			num_pins);
		return -EINVAL;
	}

	maps_per_pin = 0;
	if (num_funcs)
		maps_per_pin++;
	if (num_pulls)
		maps_per_pin++;

	cur_map = maps = FUNC1(num_pins * maps_per_pin, sizeof(*maps),
				 GFP_KERNEL);
	if (!maps)
		return -ENOMEM;

	for (i = 0; i < num_pins; i++) {
		err = FUNC3(np, "wm,pins", i, &pin);
		if (err)
			goto fail;

		if (pin >= (data->nbanks * 32)) {
			FUNC0(data->dev, "invalid wm,pins value\n");
			err = -EINVAL;
			goto fail;
		}

		if (num_funcs) {
			err = FUNC3(np, "wm,function",
						(num_funcs > 1 ? i : 0), &func);
			if (err)
				goto fail;

			err = FUNC6(data, np, pin, func,
							   &cur_map);
			if (err)
				goto fail;
		}

		if (num_pulls) {
			err = FUNC3(np, "wm,pull",
						(num_pulls > 1 ? i : 0), &pull);
			if (err)
				goto fail;

			err = FUNC7(data, np, pin, pull,
							   &cur_map);
			if (err)
				goto fail;
		}
	}
	*map = maps;
	*num_maps = num_pins * maps_per_pin;
	return 0;

/*
 * The fail path removes any maps that have been allocated. The fail path is
 * only called from code after maps has been kzalloc'd. It is also safe to
 * pass 'num_pins * maps_per_pin' as the map count even though we probably
 * failed before all the mappings were read as all maps are allocated at once,
 * and configs are only allocated for .type = PIN_MAP_TYPE_CONFIGS_PIN - there
 * is no failpath where a config can be allocated without .type being set.
 */
fail:
	FUNC5(pctldev, maps, num_pins * maps_per_pin);
	return err;
}