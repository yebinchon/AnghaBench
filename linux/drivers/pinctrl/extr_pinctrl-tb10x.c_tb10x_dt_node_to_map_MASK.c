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
struct pinctrl_map {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct device_node {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct device_node*,char*,char const**) ; 
 int FUNC1 (struct pinctrl_dev*,struct pinctrl_map**,unsigned int*,unsigned int*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pinctrl_dev*,struct pinctrl_map**,unsigned int*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct device_node*) ; 

__attribute__((used)) static int FUNC4(struct pinctrl_dev *pctl,
				struct device_node *np_config,
				struct pinctrl_map **map, unsigned *num_maps)
{
	const char *string;
	unsigned reserved_maps = 0;
	int ret = 0;

	if (FUNC0(np_config, "abilis,function", &string)) {
		FUNC3("%pOF: No abilis,function property in device tree.\n",
			np_config);
		return -EINVAL;
	}

	*map = NULL;
	*num_maps = 0;

	ret = FUNC2(pctl, map, &reserved_maps,
					num_maps, 1);
	if (ret)
		goto out;

	ret = FUNC1(pctl, map, &reserved_maps,
					num_maps, string, np_config->name);

out:
	return ret;
}