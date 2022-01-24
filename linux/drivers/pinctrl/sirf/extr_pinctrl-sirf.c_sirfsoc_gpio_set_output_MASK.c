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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {unsigned int regs; } ;
struct sirfsoc_gpio_chip {TYPE_1__ chip; } ;
struct sirfsoc_gpio_bank {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIRFSOC_GPIO_CTL_DATAOUT_MASK ; 
 int /*<<< orphan*/  SIRFSOC_GPIO_CTL_INTR_EN_MASK ; 
 int /*<<< orphan*/  SIRFSOC_GPIO_CTL_OUT_EN_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static inline void FUNC4(struct sirfsoc_gpio_chip *sgpio,
					   struct sirfsoc_gpio_bank *bank,
					   unsigned offset,
					   int value)
{
	u32 out_ctrl;
	unsigned long flags;

	FUNC1(&bank->lock, flags);

	out_ctrl = FUNC0(sgpio->chip.regs + offset);
	if (value)
		out_ctrl |= SIRFSOC_GPIO_CTL_DATAOUT_MASK;
	else
		out_ctrl &= ~SIRFSOC_GPIO_CTL_DATAOUT_MASK;

	out_ctrl &= ~SIRFSOC_GPIO_CTL_INTR_EN_MASK;
	out_ctrl |= SIRFSOC_GPIO_CTL_OUT_EN_MASK;
	FUNC3(out_ctrl, sgpio->chip.regs + offset);

	FUNC2(&bank->lock, flags);
}