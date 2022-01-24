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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct pinctrl_gpio_range* FUNC2 (struct pinctrl_dev*,unsigned int) ; 

struct pinctrl_gpio_range *
FUNC3(struct pinctrl_dev *pctldev,
				 unsigned int pin)
{
	struct pinctrl_gpio_range *range;

	FUNC0(&pctldev->mutex);
	range = FUNC2(pctldev, pin);
	FUNC1(&pctldev->mutex);

	return range;
}