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
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long*) ; 
 int FUNC1 (struct pinctrl_gpio_range*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct pinctrl_dev*,int,unsigned long*,int /*<<< orphan*/ ) ; 
 int FUNC5 (unsigned int,struct pinctrl_dev**,struct pinctrl_gpio_range**) ; 

int FUNC6(unsigned gpio, unsigned long config)
{
	unsigned long configs[] = { config };
	struct pinctrl_gpio_range *range;
	struct pinctrl_dev *pctldev;
	int ret, pin;

	ret = FUNC5(gpio, &pctldev, &range);
	if (ret)
		return ret;

	FUNC2(&pctldev->mutex);
	pin = FUNC1(range, gpio);
	ret = FUNC4(pctldev, pin, configs, FUNC0(configs));
	FUNC3(&pctldev->mutex);

	return ret;
}