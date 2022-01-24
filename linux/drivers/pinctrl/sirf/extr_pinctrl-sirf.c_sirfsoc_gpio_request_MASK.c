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
struct sirfsoc_gpio_chip {int dummy; } ;
struct sirfsoc_gpio_bank {int /*<<< orphan*/  lock; int /*<<< orphan*/  id; } ;
struct gpio_chip {unsigned int base; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct sirfsoc_gpio_chip*,struct sirfsoc_gpio_bank*,unsigned int) ; 
 struct sirfsoc_gpio_chip* FUNC2 (struct gpio_chip*) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct sirfsoc_gpio_chip*,int /*<<< orphan*/ ) ; 
 struct sirfsoc_gpio_bank* FUNC5 (struct sirfsoc_gpio_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct gpio_chip *chip, unsigned offset)
{
	struct sirfsoc_gpio_chip *sgpio = FUNC2(chip);
	struct sirfsoc_gpio_bank *bank = FUNC5(sgpio, offset);
	unsigned long flags;

	if (FUNC3(chip->base + offset))
		return -ENODEV;

	FUNC6(&bank->lock, flags);

	/*
	 * default status:
	 * set direction as input and mask irq
	 */
	FUNC4(sgpio, FUNC0(bank->id, offset));
	FUNC1(sgpio, bank, offset);

	FUNC7(&bank->lock, flags);

	return 0;
}