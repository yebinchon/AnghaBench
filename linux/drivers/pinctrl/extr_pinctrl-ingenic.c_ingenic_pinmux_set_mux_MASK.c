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
struct pinctrl_dev {int /*<<< orphan*/  dev; } ;
struct ingenic_pinctrl {int dummy; } ;
struct group_desc {unsigned int num_pins; int* data; int /*<<< orphan*/ * pins; int /*<<< orphan*/  name; } ;
struct function_desc {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ingenic_pinctrl*,int /*<<< orphan*/ ,int) ; 
 struct ingenic_pinctrl* FUNC2 (struct pinctrl_dev*) ; 
 struct group_desc* FUNC3 (struct pinctrl_dev*,unsigned int) ; 
 struct function_desc* FUNC4 (struct pinctrl_dev*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct pinctrl_dev *pctldev,
		unsigned int selector, unsigned int group)
{
	struct ingenic_pinctrl *jzpc = FUNC2(pctldev);
	struct function_desc *func;
	struct group_desc *grp;
	unsigned int i;

	func = FUNC4(pctldev, selector);
	if (!func)
		return -EINVAL;

	grp = FUNC3(pctldev, group);
	if (!grp)
		return -EINVAL;

	FUNC0(pctldev->dev, "enable function %s group %s\n",
		func->name, grp->name);

	for (i = 0; i < grp->num_pins; i++) {
		int *pin_modes = grp->data;

		FUNC1(jzpc, grp->pins[i], pin_modes[i]);
	}

	return 0;
}