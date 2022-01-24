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
 int FUNC0 (struct pinctrl_gpio_range*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (unsigned int,struct pinctrl_dev**,struct pinctrl_gpio_range**) ; 
 int FUNC4 (struct pinctrl_dev*,int) ; 

bool FUNC5(unsigned gpio)
{
	struct pinctrl_dev *pctldev;
	struct pinctrl_gpio_range *range;
	bool result;
	int pin;

	/*
	 * Try to obtain GPIO range, if it fails
	 * we're probably dealing with GPIO driver
	 * without a backing pin controller - bail out.
	 */
	if (FUNC3(gpio, &pctldev, &range))
		return true;

	FUNC1(&pctldev->mutex);

	/* Convert to the pin controllers number space */
	pin = FUNC0(range, gpio);

	result = FUNC4(pctldev, pin);

	FUNC2(&pctldev->mutex);

	return result;
}