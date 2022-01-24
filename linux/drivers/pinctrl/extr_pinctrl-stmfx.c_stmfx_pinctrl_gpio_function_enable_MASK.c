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
typedef  int /*<<< orphan*/  u32 ;
struct stmfx_pinctrl {int /*<<< orphan*/  stmfx; int /*<<< orphan*/  gpio_valid_mask; struct pinctrl_dev* pctl_dev; } ;
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  STMFX_FUNC_ALTGPIO_HIGH ; 
 int /*<<< orphan*/  STMFX_FUNC_ALTGPIO_LOW ; 
 int /*<<< orphan*/  STMFX_FUNC_GPIO ; 
 struct pinctrl_gpio_range* FUNC1 (struct pinctrl_dev*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct stmfx_pinctrl *pctl)
{
	struct pinctrl_gpio_range *gpio_range;
	struct pinctrl_dev *pctl_dev = pctl->pctl_dev;
	u32 func = STMFX_FUNC_GPIO;

	pctl->gpio_valid_mask = FUNC0(15, 0);

	gpio_range = FUNC1(pctl_dev, 16);
	if (gpio_range) {
		func |= STMFX_FUNC_ALTGPIO_LOW;
		pctl->gpio_valid_mask |= FUNC0(19, 16);
	}

	gpio_range = FUNC1(pctl_dev, 20);
	if (gpio_range) {
		func |= STMFX_FUNC_ALTGPIO_HIGH;
		pctl->gpio_valid_mask |= FUNC0(23, 20);
	}

	return FUNC2(pctl->stmfx, func);
}