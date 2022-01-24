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
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct pinctrl_pin_desc {int chipsets; scalar_t__ drv_data; } ;
struct pinctrl_desc {int /*<<< orphan*/  npins; int /*<<< orphan*/ * pins; } ;
struct of_device_id {scalar_t__ data; } ;
struct ns_pinctrl_group {int chipsets; scalar_t__ drv_data; } ;
struct ns_pinctrl_function {int chipsets; scalar_t__ drv_data; } ;
struct ns_pinctrl {uintptr_t chipset_flag; int /*<<< orphan*/  pctldev; int /*<<< orphan*/  num_functions; struct pinctrl_pin_desc* functions; int /*<<< orphan*/  num_groups; struct pinctrl_pin_desc* groups; int /*<<< orphan*/  offset; int /*<<< orphan*/  regmap; struct device* dev; struct pinctrl_desc pctldesc; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pinctrl_pin_desc*) ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 void* FUNC4 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 struct ns_pinctrl* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct pinctrl_desc*,struct ns_pinctrl*) ; 
 int /*<<< orphan*/  FUNC7 (struct pinctrl_desc*,struct pinctrl_pin_desc const*,int) ; 
 struct pinctrl_pin_desc const ns_pinctrl_desc ; 
 struct pinctrl_pin_desc* ns_pinctrl_functions ; 
 struct pinctrl_pin_desc* ns_pinctrl_groups ; 
 int /*<<< orphan*/  ns_pinctrl_of_match_table ; 
 struct pinctrl_pin_desc* ns_pinctrl_pins ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 struct of_device_id* FUNC9 (int /*<<< orphan*/ ,struct device*) ; 
 scalar_t__ FUNC10 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct ns_pinctrl*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	const struct of_device_id *of_id;
	struct ns_pinctrl *ns_pinctrl;
	struct pinctrl_desc *pctldesc;
	struct pinctrl_pin_desc *pin;
	struct ns_pinctrl_group *group;
	struct ns_pinctrl_function *function;
	int i;

	ns_pinctrl = FUNC5(dev, sizeof(*ns_pinctrl), GFP_KERNEL);
	if (!ns_pinctrl)
		return -ENOMEM;
	pctldesc = &ns_pinctrl->pctldesc;
	FUNC11(pdev, ns_pinctrl);

	/* Set basic properties */

	ns_pinctrl->dev = dev;

	of_id = FUNC9(ns_pinctrl_of_match_table, dev);
	if (!of_id)
		return -EINVAL;
	ns_pinctrl->chipset_flag = (uintptr_t)of_id->data;

	ns_pinctrl->regmap = FUNC12(FUNC8(np));
	if (FUNC1(ns_pinctrl->regmap)) {
		int err = FUNC2(ns_pinctrl->regmap);

		FUNC3(dev, "Failed to map pinctrl regs: %d\n", err);

		return err;
	}

	if (FUNC10(np, "offset", &ns_pinctrl->offset)) {
		FUNC3(dev, "Failed to get register offset\n");
		return -ENOENT;
	}

	FUNC7(pctldesc, &ns_pinctrl_desc, sizeof(*pctldesc));

	/* Set pinctrl properties */

	pctldesc->pins = FUNC4(dev, FUNC0(ns_pinctrl_pins),
				      sizeof(struct pinctrl_pin_desc),
				      GFP_KERNEL);
	if (!pctldesc->pins)
		return -ENOMEM;
	for (i = 0, pin = (struct pinctrl_pin_desc *)&pctldesc->pins[0];
	     i < FUNC0(ns_pinctrl_pins); i++) {
		const struct pinctrl_pin_desc *src = &ns_pinctrl_pins[i];
		unsigned int chipsets = (uintptr_t)src->drv_data;

		if (chipsets & ns_pinctrl->chipset_flag) {
			FUNC7(pin++, src, sizeof(*src));
			pctldesc->npins++;
		}
	}

	ns_pinctrl->groups = FUNC4(dev, FUNC0(ns_pinctrl_groups),
					  sizeof(struct ns_pinctrl_group),
					  GFP_KERNEL);
	if (!ns_pinctrl->groups)
		return -ENOMEM;
	for (i = 0, group = &ns_pinctrl->groups[0];
	     i < FUNC0(ns_pinctrl_groups); i++) {
		const struct ns_pinctrl_group *src = &ns_pinctrl_groups[i];

		if (src->chipsets & ns_pinctrl->chipset_flag) {
			FUNC7(group++, src, sizeof(*src));
			ns_pinctrl->num_groups++;
		}
	}

	ns_pinctrl->functions = FUNC4(dev,
					     FUNC0(ns_pinctrl_functions),
					     sizeof(struct ns_pinctrl_function),
					     GFP_KERNEL);
	if (!ns_pinctrl->functions)
		return -ENOMEM;
	for (i = 0, function = &ns_pinctrl->functions[0];
	     i < FUNC0(ns_pinctrl_functions); i++) {
		const struct ns_pinctrl_function *src = &ns_pinctrl_functions[i];

		if (src->chipsets & ns_pinctrl->chipset_flag) {
			FUNC7(function++, src, sizeof(*src));
			ns_pinctrl->num_functions++;
		}
	}

	/* Register */

	ns_pinctrl->pctldev = FUNC6(dev, pctldesc, ns_pinctrl);
	if (FUNC1(ns_pinctrl->pctldev)) {
		FUNC3(dev, "Failed to register pinctrl\n");
		return FUNC2(ns_pinctrl->pctldev);
	}

	return 0;
}