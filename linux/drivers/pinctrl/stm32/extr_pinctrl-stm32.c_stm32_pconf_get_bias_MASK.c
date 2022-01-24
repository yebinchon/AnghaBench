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
typedef  unsigned int u32 ;
struct stm32_gpio_bank {int /*<<< orphan*/  clk; int /*<<< orphan*/  lock; scalar_t__ base; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 scalar_t__ STM32_GPIO_PUPDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u32 FUNC6(struct stm32_gpio_bank *bank,
	unsigned int offset)
{
	unsigned long flags;
	u32 val;

	FUNC2(bank->clk);
	FUNC4(&bank->lock, flags);

	val = FUNC3(bank->base + STM32_GPIO_PUPDR);
	val &= FUNC0(offset * 2 + 1, offset * 2);

	FUNC5(&bank->lock, flags);
	FUNC1(bank->clk);

	return (val >> (offset * 2));
}