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
struct gpio_chip {int dummy; } ;
struct atlas7_gpio_chip {int /*<<< orphan*/  lock; } ;
struct atlas7_gpio_bank {int gpio_offset; } ;

/* Variables and functions */
 int ATLAS7_GPIO_CTL_DATAIN_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct atlas7_gpio_bank*,int) ; 
 struct atlas7_gpio_bank* FUNC1 (struct atlas7_gpio_chip*,unsigned int) ; 
 struct atlas7_gpio_chip* FUNC2 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip,
					unsigned int gpio)
{
	struct atlas7_gpio_chip *a7gc = FUNC2(chip);
	struct atlas7_gpio_bank *bank;
	u32 val, pin_in_bank;
	unsigned long flags;

	bank = FUNC1(a7gc, gpio);
	pin_in_bank = gpio - bank->gpio_offset;

	FUNC3(&a7gc->lock, flags);

	val = FUNC5(FUNC0(bank, pin_in_bank));

	FUNC4(&a7gc->lock, flags);

	return !!(val & ATLAS7_GPIO_CTL_DATAIN_MASK);
}