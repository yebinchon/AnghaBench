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
typedef  int /*<<< orphan*/  u32 ;
struct sirfsoc_gpio_chip {int /*<<< orphan*/  lock; } ;
struct sirfsoc_gpio_bank {int /*<<< orphan*/  id; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct sirfsoc_gpio_chip* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct sirfsoc_gpio_chip*,struct sirfsoc_gpio_bank*,int /*<<< orphan*/ ,int) ; 
 struct sirfsoc_gpio_bank* FUNC3 (struct sirfsoc_gpio_chip*,unsigned int) ; 
 int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct gpio_chip *chip,
	unsigned gpio, int value)
{
	struct sirfsoc_gpio_chip *sgpio = FUNC1(chip);
	struct sirfsoc_gpio_bank *bank = FUNC3(sgpio, gpio);
	int idx = FUNC4(gpio);
	u32 offset;
	unsigned long flags;

	offset = FUNC0(bank->id, idx);

	FUNC5(&sgpio->lock, flags);

	FUNC2(sgpio, bank, offset, value);

	FUNC6(&sgpio->lock, flags);

	return 0;
}