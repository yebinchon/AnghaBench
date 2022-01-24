#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pinctrl_ops {int (* dt_node_to_map ) (struct pinctrl_dev*,struct device_node*,struct pinctrl_map**,unsigned int*) ;} ;
struct pinctrl_map {int dummy; } ;
struct pinctrl_dev {int /*<<< orphan*/  dev; TYPE_1__* desc; } ;
struct pinctrl {TYPE_2__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {struct device_node* of_node; } ;
struct TYPE_5__ {struct pinctrl_ops* pctlops; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_MODULES ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int FUNC5 (struct pinctrl*,char const*,struct pinctrl_dev*,struct pinctrl_map*,unsigned int) ; 
 struct pinctrl_dev* FUNC6 (struct device_node*) ; 
 struct device_node* FUNC7 (struct device_node*) ; 
 struct device_node* FUNC8 (struct device_node*) ; 
 scalar_t__ FUNC9 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 int FUNC11 (struct device_node*,char*) ; 
 int FUNC12 (struct pinctrl_dev*,struct device_node*,struct pinctrl_map**,unsigned int*) ; 

__attribute__((used)) static int FUNC13(struct pinctrl *p,
				struct pinctrl_dev *hog_pctldev,
				const char *statename,
				struct device_node *np_config)
{
	struct pinctrl_dev *pctldev = NULL;
	struct device_node *np_pctldev;
	const struct pinctrl_ops *ops;
	int ret;
	struct pinctrl_map *map;
	unsigned num_maps;
	bool allow_default = false;

	/* Find the pin controller containing np_config */
	np_pctldev = FUNC8(np_config);
	for (;;) {
		if (!allow_default)
			allow_default = FUNC11(np_pctldev,
							      "pinctrl-use-default");

		np_pctldev = FUNC7(np_pctldev);
		if (!np_pctldev || FUNC9(np_pctldev)) {
			FUNC10(np_pctldev);
			/* keep deferring if modules are enabled unless we've timed out */
			if (FUNC0(CONFIG_MODULES) && !allow_default)
				return FUNC4(p->dev);

			return FUNC3(p->dev);
		}
		/* If we're creating a hog we can use the passed pctldev */
		if (hog_pctldev && (np_pctldev == p->dev->of_node)) {
			pctldev = hog_pctldev;
			break;
		}
		pctldev = FUNC6(np_pctldev);
		if (pctldev)
			break;
		/* Do not defer probing of hogs (circular loop) */
		if (np_pctldev == p->dev->of_node) {
			FUNC10(np_pctldev);
			return -ENODEV;
		}
	}
	FUNC10(np_pctldev);

	/*
	 * Call pinctrl driver to parse device tree node, and
	 * generate mapping table entries
	 */
	ops = pctldev->desc->pctlops;
	if (!ops->dt_node_to_map) {
		FUNC1(p->dev, "pctldev %s doesn't support DT\n",
			FUNC2(pctldev->dev));
		return -ENODEV;
	}
	ret = ops->dt_node_to_map(pctldev, np_config, &map, &num_maps);
	if (ret < 0)
		return ret;

	/* Stash the mapping table chunk away for later use */
	return FUNC5(p, statename, pctldev, map, num_maps);
}