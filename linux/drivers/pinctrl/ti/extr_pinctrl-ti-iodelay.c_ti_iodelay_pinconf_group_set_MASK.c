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
struct ti_iodelay_pingroup {int ncfg; int /*<<< orphan*/ * cfg; } ;
struct ti_iodelay_device {struct device* dev; } ;
struct pinctrl_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUPP ; 
 unsigned long PIN_CONFIG_END ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 struct ti_iodelay_device* FUNC1 (struct pinctrl_dev*) ; 
 struct ti_iodelay_pingroup* FUNC2 (struct ti_iodelay_device*,unsigned int) ; 
 scalar_t__ FUNC3 (struct ti_iodelay_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct pinctrl_dev *pctldev,
					unsigned int selector,
					unsigned long *configs,
					unsigned int num_configs)
{
	struct ti_iodelay_device *iod;
	struct device *dev;
	struct ti_iodelay_pingroup *group;
	int i;

	iod = FUNC1(pctldev);
	dev = iod->dev;
	group = FUNC2(iod, selector);

	if (num_configs != 1) {
		FUNC0(dev, "Unsupported number of configurations %d\n",
			num_configs);
		return -EINVAL;
	}

	if (*configs != PIN_CONFIG_END) {
		FUNC0(dev, "Unsupported configuration\n");
		return -EINVAL;
	}

	for (i = 0; i < group->ncfg; i++) {
		if (FUNC3(iod, &group->cfg[i]))
			return -ENOTSUPP;
	}

	return 0;
}