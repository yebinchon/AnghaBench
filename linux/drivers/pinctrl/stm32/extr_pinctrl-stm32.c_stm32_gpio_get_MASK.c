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
struct stm32_gpio_bank {int /*<<< orphan*/  clk; scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 scalar_t__ STM32_GPIO_IDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct stm32_gpio_bank* FUNC3 (struct gpio_chip*) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *chip, unsigned offset)
{
	struct stm32_gpio_bank *bank = FUNC3(chip);
	int ret;

	FUNC2(bank->clk);

	ret = !!(FUNC4(bank->base + STM32_GPIO_IDR) & FUNC0(offset));

	FUNC1(bank->clk);

	return ret;
}