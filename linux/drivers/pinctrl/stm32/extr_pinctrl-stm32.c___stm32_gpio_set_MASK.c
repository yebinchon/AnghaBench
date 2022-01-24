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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ STM32_GPIO_BSRR ; 
 scalar_t__ STM32_GPIO_PINS_PER_BANK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stm32_gpio_bank*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC5(struct stm32_gpio_bank *bank,
	unsigned offset, int value)
{
	FUNC3(bank, offset, value);

	if (!value)
		offset += STM32_GPIO_PINS_PER_BANK;

	FUNC2(bank->clk);

	FUNC4(FUNC0(offset), bank->base + STM32_GPIO_BSRR);

	FUNC1(bank->clk);
}