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
struct stm32_pinctrl_group {int /*<<< orphan*/  pin; } ;
struct stm32_pinctrl {int /*<<< orphan*/  dev; struct stm32_pinctrl_group* groups; } ;
struct stm32_gpio_bank {int dummy; } ;
struct pinctrl_gpio_range {int /*<<< orphan*/  gc; } ;
struct pinctrl_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct stm32_gpio_bank* FUNC1 (int /*<<< orphan*/ ) ; 
 struct stm32_pinctrl* FUNC2 (struct pinctrl_dev*) ; 
 struct pinctrl_gpio_range* FUNC3 (struct pinctrl_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct stm32_pinctrl*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC8 (struct stm32_gpio_bank*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct pinctrl_dev *pctldev,
			    unsigned function,
			    unsigned group)
{
	bool ret;
	struct stm32_pinctrl *pctl = FUNC2(pctldev);
	struct stm32_pinctrl_group *g = pctl->groups + group;
	struct pinctrl_gpio_range *range;
	struct stm32_gpio_bank *bank;
	u32 mode, alt;
	int pin;

	ret = FUNC7(pctl, g->pin, function);
	if (!ret) {
		FUNC0(pctl->dev, "invalid function %d on group %d .\n",
				function, group);
		return -EINVAL;
	}

	range = FUNC3(pctldev, g->pin);
	if (!range) {
		FUNC0(pctl->dev, "No gpio range defined.\n");
		return -EINVAL;
	}

	bank = FUNC1(range->gc);
	pin = FUNC6(g->pin);

	mode = FUNC5(function);
	alt = FUNC4(function);

	return FUNC8(bank, pin, mode, alt);
}