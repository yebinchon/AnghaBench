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
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct axp20x_pctl {TYPE_1__* funcs; } ;
struct TYPE_2__ {int /*<<< orphan*/  muxval; } ;

/* Variables and functions */
 size_t AXP20X_FUNC_GPIO_IN ; 
 size_t AXP20X_FUNC_GPIO_OUT ; 
 int FUNC0 (struct pinctrl_dev*,unsigned int,int /*<<< orphan*/ ) ; 
 struct axp20x_pctl* FUNC1 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC2(struct pinctrl_dev *pctldev,
					 struct pinctrl_gpio_range *range,
					 unsigned int offset, bool input)
{
	struct axp20x_pctl *pctl = FUNC1(pctldev);

	if (input)
		return FUNC0(pctldev, offset,
				      pctl->funcs[AXP20X_FUNC_GPIO_IN].muxval);

	return FUNC0(pctldev, offset,
			      pctl->funcs[AXP20X_FUNC_GPIO_OUT].muxval);
}