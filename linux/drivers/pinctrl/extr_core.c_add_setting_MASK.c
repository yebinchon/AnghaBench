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
struct pinctrl_state {int /*<<< orphan*/  settings; } ;
struct pinctrl_setting {int type; int /*<<< orphan*/  node; int /*<<< orphan*/  dev_name; struct pinctrl_dev* pctldev; } ;
struct pinctrl_map {int type; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  ctrl_dev_name; int /*<<< orphan*/  name; } ;
struct pinctrl_dev {int dummy; } ;
struct pinctrl {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct pinctrl_state*) ; 
#define  PIN_MAP_TYPE_CONFIGS_GROUP 130 
#define  PIN_MAP_TYPE_CONFIGS_PIN 129 
 int PIN_MAP_TYPE_DUMMY_STATE ; 
#define  PIN_MAP_TYPE_MUX_GROUP 128 
 int FUNC1 (struct pinctrl_state*) ; 
 struct pinctrl_state* FUNC2 (struct pinctrl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct pinctrl_state* FUNC4 (struct pinctrl*,int /*<<< orphan*/ ) ; 
 struct pinctrl_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pinctrl_setting*) ; 
 struct pinctrl_setting* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct pinctrl_map const*,struct pinctrl_setting*) ; 
 int FUNC10 (struct pinctrl_map const*,struct pinctrl_setting*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct pinctrl *p, struct pinctrl_dev *pctldev,
		       const struct pinctrl_map *map)
{
	struct pinctrl_state *state;
	struct pinctrl_setting *setting;
	int ret;

	state = FUNC4(p, map->name);
	if (!state)
		state = FUNC2(p, map->name);
	if (FUNC0(state))
		return FUNC1(state);

	if (map->type == PIN_MAP_TYPE_DUMMY_STATE)
		return 0;

	setting = FUNC7(sizeof(*setting), GFP_KERNEL);
	if (!setting)
		return -ENOMEM;

	setting->type = map->type;

	if (pctldev)
		setting->pctldev = pctldev;
	else
		setting->pctldev =
			FUNC5(map->ctrl_dev_name);
	if (!setting->pctldev) {
		FUNC6(setting);
		/* Do not defer probing of hogs (circular loop) */
		if (!FUNC11(map->ctrl_dev_name, map->dev_name))
			return -ENODEV;
		/*
		 * OK let us guess that the driver is not there yet, and
		 * let's defer obtaining this pinctrl handle to later...
		 */
		FUNC3(p->dev, "unknown pinctrl device %s in map entry, deferring probe",
			map->ctrl_dev_name);
		return -EPROBE_DEFER;
	}

	setting->dev_name = map->dev_name;

	switch (map->type) {
	case PIN_MAP_TYPE_MUX_GROUP:
		ret = FUNC10(map, setting);
		break;
	case PIN_MAP_TYPE_CONFIGS_PIN:
	case PIN_MAP_TYPE_CONFIGS_GROUP:
		ret = FUNC9(map, setting);
		break;
	default:
		ret = -EINVAL;
		break;
	}
	if (ret < 0) {
		FUNC6(setting);
		return ret;
	}

	FUNC8(&setting->node, &state->settings);

	return 0;
}