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
struct stm32_gpio_bank {int dummy; } ;
struct pinctrl_gpio_range {int /*<<< orphan*/  gc; } ;
struct pinctrl_dev {int dummy; } ;

/* Variables and functions */
 struct stm32_gpio_bank* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (struct stm32_gpio_bank*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pinctrl_dev *pctldev,
			struct pinctrl_gpio_range *range, unsigned gpio,
			bool input)
{
	struct stm32_gpio_bank *bank = FUNC0(range->gc);
	int pin = FUNC1(gpio);

	return FUNC2(bank, pin, !input, 0);
}