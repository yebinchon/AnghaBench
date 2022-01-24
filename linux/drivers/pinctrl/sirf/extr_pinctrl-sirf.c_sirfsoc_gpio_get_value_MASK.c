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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ regs; } ;
struct sirfsoc_gpio_chip {TYPE_1__ chip; } ;
struct sirfsoc_gpio_bank {int /*<<< orphan*/  lock; int /*<<< orphan*/  id; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int SIRFSOC_GPIO_CTL_DATAIN_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 struct sirfsoc_gpio_chip* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (scalar_t__) ; 
 struct sirfsoc_gpio_bank* FUNC3 (struct sirfsoc_gpio_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip, unsigned offset)
{
	struct sirfsoc_gpio_chip *sgpio = FUNC1(chip);
	struct sirfsoc_gpio_bank *bank = FUNC3(sgpio, offset);
	u32 val;
	unsigned long flags;

	FUNC4(&bank->lock, flags);

	val = FUNC2(sgpio->chip.regs + FUNC0(bank->id, offset));

	FUNC5(&bank->lock, flags);

	return !!(val & SIRFSOC_GPIO_CTL_DATAIN_MASK);
}