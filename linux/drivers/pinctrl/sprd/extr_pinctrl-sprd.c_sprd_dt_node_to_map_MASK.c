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
struct sprd_pinctrl {int /*<<< orphan*/  dev; } ;
struct sprd_pin_group {char* name; unsigned int* pins; } ;
struct pinctrl_map {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct device_node {int /*<<< orphan*/  name; } ;
typedef  enum pinctrl_map_type { ____Placeholder_pinctrl_map_type } pinctrl_map_type ;

/* Variables and functions */
 int EINVAL ; 
 int PIN_MAP_TYPE_CONFIGS_GROUP ; 
 int PIN_MAP_TYPE_CONFIGS_PIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int FUNC3 (struct device_node*,char*) ; 
 int FUNC4 (struct device_node*,char*,char const**) ; 
 char* FUNC5 (struct pinctrl_dev*,unsigned int) ; 
 int FUNC6 (struct device_node*,struct pinctrl_dev*,unsigned long**,unsigned int*) ; 
 struct sprd_pinctrl* FUNC7 (struct pinctrl_dev*) ; 
 int FUNC8 (struct pinctrl_dev*,struct pinctrl_map**,unsigned int*,unsigned int*,char const*,unsigned long*,unsigned int,int) ; 
 int FUNC9 (struct pinctrl_dev*,struct pinctrl_map**,unsigned int*,unsigned int*,char*,char const*) ; 
 int FUNC10 (struct pinctrl_dev*,struct pinctrl_map**,unsigned int*,unsigned int*,unsigned int) ; 
 struct sprd_pin_group* FUNC11 (struct sprd_pinctrl*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct pinctrl_dev *pctldev,
			       struct device_node *np,
			       struct pinctrl_map **map,
			       unsigned int *num_maps)
{
	struct sprd_pinctrl *pctl = FUNC7(pctldev);
	const struct sprd_pin_group *grp;
	unsigned long *configs = NULL;
	unsigned int num_configs = 0;
	unsigned int reserved_maps = 0;
	unsigned int reserve = 0;
	const char *function;
	enum pinctrl_map_type type;
	int ret;

	grp = FUNC11(pctl, np->name);
	if (!grp) {
		FUNC0(pctl->dev, "unable to find group for node %s\n",
			FUNC2(np));
		return -EINVAL;
	}

	ret = FUNC3(np, "pins");
	if (ret < 0)
		return ret;

	if (ret == 1)
		type = PIN_MAP_TYPE_CONFIGS_PIN;
	else
		type = PIN_MAP_TYPE_CONFIGS_GROUP;

	ret = FUNC4(np, "function", &function);
	if (ret < 0) {
		if (ret != -EINVAL)
			FUNC0(pctl->dev,
				"%s: could not parse property function\n",
				FUNC2(np));
		function = NULL;
	}

	ret = FUNC6(np, pctldev, &configs,
					      &num_configs);
	if (ret < 0) {
		FUNC0(pctl->dev, "%s: could not parse node property\n",
			FUNC2(np));
		return ret;
	}

	*map = NULL;
	*num_maps = 0;

	if (function != NULL)
		reserve++;
	if (num_configs)
		reserve++;

	ret = FUNC10(pctldev, map, &reserved_maps,
					num_maps, reserve);
	if (ret < 0)
		goto out;

	if (function) {
		ret = FUNC9(pctldev, map,
						&reserved_maps, num_maps,
						grp->name, function);
		if (ret < 0)
			goto out;
	}

	if (num_configs) {
		const char *group_or_pin;
		unsigned int pin_id;

		if (type == PIN_MAP_TYPE_CONFIGS_PIN) {
			pin_id = grp->pins[0];
			group_or_pin = FUNC5(pctldev, pin_id);
		} else {
			group_or_pin = grp->name;
		}

		ret = FUNC8(pctldev, map,
						    &reserved_maps, num_maps,
						    group_or_pin, configs,
						    num_configs, type);
	}

out:
	FUNC1(configs);
	return ret;
}