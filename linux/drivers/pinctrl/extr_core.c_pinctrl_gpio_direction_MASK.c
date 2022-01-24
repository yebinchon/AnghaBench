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
 int FUNC3 (unsigned int,struct pinctrl_dev**,struct pinctrl_gpio_range**) ; 
 int FUNC4 (struct pinctrl_dev*,struct pinctrl_gpio_range*,int,int) ; 

__attribute__((used)) static int FUNC5(unsigned gpio, bool input)
{
	struct pinctrl_dev *pctldev;
	struct pinctrl_gpio_range *range;
	int ret;
	int pin;

	ret = FUNC3(gpio, &pctldev, &range);
	if (ret) {
		return ret;
	}

	FUNC1(&pctldev->mutex);

	/* Convert to the pin controllers number space */
	pin = FUNC0(range, gpio);
	ret = FUNC4(pctldev, range, pin, input);

	FUNC2(&pctldev->mutex);

	return ret;
}