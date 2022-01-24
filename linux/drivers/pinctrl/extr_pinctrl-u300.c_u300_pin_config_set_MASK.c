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
struct pinctrl_gpio_range {unsigned int pin_base; unsigned int base; int /*<<< orphan*/  gc; } ;
struct pinctrl_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 struct pinctrl_gpio_range* FUNC1 (struct pinctrl_dev*,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pinctrl_dev *pctldev, unsigned pin,
			       unsigned long *configs, unsigned num_configs)
{
	struct pinctrl_gpio_range *range =
		FUNC1(pctldev, pin);
	int ret, i;

	if (!range)
		return -EINVAL;

	for (i = 0; i < num_configs; i++) {
		/* Note: none of these configurations take any argument */
		ret = FUNC2(range->gc,
			(pin - range->pin_base + range->base),
			FUNC0(configs[i]));
		if (ret)
			return ret;
	} /* for each config */

	return 0;
}