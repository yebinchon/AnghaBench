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
struct pinctrl_ops {unsigned int (* get_groups_count ) (struct pinctrl_dev*) ;char* (* get_group_name ) (struct pinctrl_dev*,unsigned int) ;} ;
struct pinctrl_dev {int /*<<< orphan*/  dev; TYPE_1__* desc; } ;
struct TYPE_2__ {struct pinctrl_ops* pctlops; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 unsigned int FUNC3 (struct pinctrl_dev*) ; 
 char* FUNC4 (struct pinctrl_dev*,unsigned int) ; 

int FUNC5(struct pinctrl_dev *pctldev,
			       const char *pin_group)
{
	const struct pinctrl_ops *pctlops = pctldev->desc->pctlops;
	unsigned ngroups = pctlops->get_groups_count(pctldev);
	unsigned group_selector = 0;

	while (group_selector < ngroups) {
		const char *gname = pctlops->get_group_name(pctldev,
							    group_selector);
		if (gname && !FUNC2(gname, pin_group)) {
			FUNC0(pctldev->dev,
				"found group selector %u for %s\n",
				group_selector,
				pin_group);
			return group_selector;
		}

		group_selector++;
	}

	FUNC1(pctldev->dev, "does not have pin group %s\n",
		pin_group);

	return -EINVAL;
}