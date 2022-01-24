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
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct sirfsoc_gpio_chip* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct sirfsoc_gpio_chip*,unsigned int) ; 
 struct sirfsoc_gpio_bank* FUNC3 (struct sirfsoc_gpio_chip*,unsigned int) ; 
 int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct gpio_chip *chip, unsigned gpio)
{
	struct sirfsoc_gpio_chip *sgpio = FUNC1(chip);
	struct sirfsoc_gpio_bank *bank = FUNC3(sgpio, gpio);
	int idx = FUNC4(gpio);
	unsigned long flags;
	unsigned offset;

	offset = FUNC0(bank->id, idx);

	FUNC5(&bank->lock, flags);

	FUNC2(sgpio, offset);

	FUNC6(&bank->lock, flags);

	return 0;
}