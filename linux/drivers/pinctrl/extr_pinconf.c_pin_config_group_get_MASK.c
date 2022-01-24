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
struct pinctrl_dev {int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; TYPE_1__* desc; } ;
struct pinconf_ops {int (* pin_config_group_get ) (struct pinctrl_dev*,int,unsigned long*) ;} ;
struct TYPE_2__ {struct pinconf_ops* confops; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct pinctrl_dev* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct pinctrl_dev*,char const*) ; 
 int FUNC5 (struct pinctrl_dev*,int,unsigned long*) ; 

int FUNC6(const char *dev_name, const char *pin_group,
			 unsigned long *config)
{
	struct pinctrl_dev *pctldev;
	const struct pinconf_ops *ops;
	int selector, ret;

	pctldev = FUNC1(dev_name);
	if (!pctldev) {
		ret = -EINVAL;
		return ret;
	}

	FUNC2(&pctldev->mutex);

	ops = pctldev->desc->confops;

	if (!ops || !ops->pin_config_group_get) {
		FUNC0(pctldev->dev,
			"cannot get configuration for pin group, missing group config get function in driver\n");
		ret = -ENOTSUPP;
		goto unlock;
	}

	selector = FUNC4(pctldev, pin_group);
	if (selector < 0) {
		ret = selector;
		goto unlock;
	}

	ret = ops->pin_config_group_get(pctldev, selector, config);

unlock:
	FUNC3(&pctldev->mutex);
	return ret;
}