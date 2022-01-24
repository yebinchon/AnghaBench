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
struct TYPE_2__ {scalar_t__ regs; } ;
struct sirfsoc_gpio_chip {TYPE_1__ chip; } ;
struct sirfsoc_gpio_bank {int /*<<< orphan*/  lock; int /*<<< orphan*/  id; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIRFSOC_GPIO_CTL_DATAOUT_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 struct sirfsoc_gpio_chip* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct sirfsoc_gpio_bank* FUNC3 (struct sirfsoc_gpio_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct gpio_chip *chip, unsigned offset,
	int value)
{
	struct sirfsoc_gpio_chip *sgpio = FUNC1(chip);
	struct sirfsoc_gpio_bank *bank = FUNC3(sgpio, offset);
	u32 ctrl;
	unsigned long flags;

	FUNC4(&bank->lock, flags);

	ctrl = FUNC2(sgpio->chip.regs + FUNC0(bank->id, offset));
	if (value)
		ctrl |= SIRFSOC_GPIO_CTL_DATAOUT_MASK;
	else
		ctrl &= ~SIRFSOC_GPIO_CTL_DATAOUT_MASK;
	FUNC6(ctrl, sgpio->chip.regs + FUNC0(bank->id, offset));

	FUNC5(&bank->lock, flags);
}