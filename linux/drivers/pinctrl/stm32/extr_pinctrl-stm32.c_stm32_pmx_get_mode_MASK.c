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
typedef  int u32 ;
struct stm32_gpio_bank {int /*<<< orphan*/  clk; int /*<<< orphan*/  lock; scalar_t__ base; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int STM32_GPIO_AFRL ; 
 scalar_t__ STM32_GPIO_MODER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct stm32_gpio_bank *bank, int pin, u32 *mode,
			u32 *alt)
{
	u32 val;
	int alt_shift = (pin % 8) * 4;
	int alt_offset = STM32_GPIO_AFRL + (pin / 8) * 4;
	unsigned long flags;

	FUNC2(bank->clk);
	FUNC4(&bank->lock, flags);

	val = FUNC3(bank->base + alt_offset);
	val &= FUNC0(alt_shift + 3, alt_shift);
	*alt = val >> alt_shift;

	val = FUNC3(bank->base + STM32_GPIO_MODER);
	val &= FUNC0(pin * 2 + 1, pin * 2);
	*mode = val >> (pin * 2);

	FUNC5(&bank->lock, flags);
	FUNC1(bank->clk);
}