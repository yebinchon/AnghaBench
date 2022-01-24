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
struct pinctrl_maps {unsigned int num_maps; int /*<<< orphan*/  node; struct pinctrl_map const* maps; } ;
struct pinctrl_map {int type; int /*<<< orphan*/  name; int /*<<< orphan*/  ctrl_dev_name; int /*<<< orphan*/  dev_name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  PIN_MAP_TYPE_CONFIGS_GROUP 131 
#define  PIN_MAP_TYPE_CONFIGS_PIN 130 
#define  PIN_MAP_TYPE_DUMMY_STATE 129 
#define  PIN_MAP_TYPE_MUX_GROUP 128 
 int /*<<< orphan*/  FUNC0 (struct pinctrl_maps*) ; 
 struct pinctrl_map const* FUNC1 (struct pinctrl_map const*,int,int /*<<< orphan*/ ) ; 
 struct pinctrl_maps* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct pinctrl_map const*,int) ; 
 int /*<<< orphan*/  pinctrl_maps ; 
 int /*<<< orphan*/  pinctrl_maps_mutex ; 
 int FUNC7 (struct pinctrl_map const*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,...) ; 

int FUNC10(const struct pinctrl_map *maps, unsigned num_maps,
			 bool dup)
{
	int i, ret;
	struct pinctrl_maps *maps_node;

	FUNC8("add %u pinctrl maps\n", num_maps);

	/* First sanity check the new mapping */
	for (i = 0; i < num_maps; i++) {
		if (!maps[i].dev_name) {
			FUNC9("failed to register map %s (%d): no device given\n",
			       maps[i].name, i);
			return -EINVAL;
		}

		if (!maps[i].name) {
			FUNC9("failed to register map %d: no map name given\n",
			       i);
			return -EINVAL;
		}

		if (maps[i].type != PIN_MAP_TYPE_DUMMY_STATE &&
				!maps[i].ctrl_dev_name) {
			FUNC9("failed to register map %s (%d): no pin control device given\n",
			       maps[i].name, i);
			return -EINVAL;
		}

		switch (maps[i].type) {
		case PIN_MAP_TYPE_DUMMY_STATE:
			break;
		case PIN_MAP_TYPE_MUX_GROUP:
			ret = FUNC7(&maps[i], i);
			if (ret < 0)
				return ret;
			break;
		case PIN_MAP_TYPE_CONFIGS_PIN:
		case PIN_MAP_TYPE_CONFIGS_GROUP:
			ret = FUNC6(&maps[i], i);
			if (ret < 0)
				return ret;
			break;
		default:
			FUNC9("failed to register map %s (%d): invalid type given\n",
			       maps[i].name, i);
			return -EINVAL;
		}
	}

	maps_node = FUNC2(sizeof(*maps_node), GFP_KERNEL);
	if (!maps_node)
		return -ENOMEM;

	maps_node->num_maps = num_maps;
	if (dup) {
		maps_node->maps = FUNC1(maps, sizeof(*maps) * num_maps,
					  GFP_KERNEL);
		if (!maps_node->maps) {
			FUNC0(maps_node);
			return -ENOMEM;
		}
	} else {
		maps_node->maps = maps;
	}

	FUNC4(&pinctrl_maps_mutex);
	FUNC3(&maps_node->node, &pinctrl_maps);
	FUNC5(&pinctrl_maps_mutex);

	return 0;
}