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
struct st_pio_control {int dummy; } ;
struct st_gpio_bank {scalar_t__ base; struct st_pio_control pc; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 unsigned int ST_GPIO_DIRECTION_IN ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 struct st_gpio_bank* FUNC2 (struct gpio_chip*) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 unsigned int FUNC4 (struct st_pio_control*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct st_pio_control*,unsigned int,unsigned long*) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip, unsigned offset)
{
	struct st_gpio_bank *bank = FUNC2(chip);
	struct st_pio_control pc = bank->pc;
	unsigned long config;
	unsigned int direction = 0;
	unsigned int function;
	unsigned int value;
	int i = 0;

	/* Alternate function direction is handled by Pinctrl */
	function = FUNC4(&pc, offset);
	if (function) {
		FUNC5(&pc, offset, &config);
		return !FUNC1(config);
	}

	/*
	 * GPIO direction is handled differently
	 * - See st_gpio_direction() above for an explanation
	 */
	for (i = 0; i <= 2; i++) {
		value = FUNC3(bank->base + FUNC0(i));
		direction |= ((value >> offset) & 0x1) << i;
	}

	return (direction == ST_GPIO_DIRECTION_IN);
}