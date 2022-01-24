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
struct stm32_pinctrl {int /*<<< orphan*/  dev; int /*<<< orphan*/  pctl_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct stm32_gpio_bank {unsigned int bank_nr; TYPE_1__ gpio_chip; } ;
struct pinctrl_gpio_range {int dummy; } ;
struct gpio_chip {scalar_t__ base; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int STM32_GPIO_PINS_PER_BANK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct stm32_pinctrl* FUNC1 (int /*<<< orphan*/ ) ; 
 struct stm32_gpio_bank* FUNC2 (struct gpio_chip*) ; 
 struct pinctrl_gpio_range* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *chip, unsigned offset)
{
	struct stm32_gpio_bank *bank = FUNC2(chip);
	struct stm32_pinctrl *pctl = FUNC1(bank->gpio_chip.parent);
	struct pinctrl_gpio_range *range;
	int pin = offset + (bank->bank_nr * STM32_GPIO_PINS_PER_BANK);

	range = FUNC3(pctl->pctl_dev, pin);
	if (!range) {
		FUNC0(pctl->dev, "pin %d not in range.\n", pin);
		return -EINVAL;
	}

	return FUNC4(chip->base + offset);
}