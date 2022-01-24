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
struct gpio_chip {int dummy; } ;
struct axp20x_pctl {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned int AXP20X_GPIO_FUNCTIONS ; 
 int FUNC0 (unsigned int) ; 
 struct axp20x_pctl* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,unsigned int*) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip,
				     unsigned int offset)
{
	struct axp20x_pctl *pctl = FUNC1(chip);
	unsigned int val;
	int reg, ret;

	reg = FUNC0(offset);
	if (reg < 0)
		return reg;

	ret = FUNC2(pctl->regmap, reg, &val);
	if (ret)
		return ret;

	/*
	 * This shouldn't really happen if the pin is in use already,
	 * or if it's not in use yet, it doesn't matter since we're
	 * going to change the value soon anyway. Default to output.
	 */
	if ((val & AXP20X_GPIO_FUNCTIONS) > 2)
		return 0;

	/*
	 * The GPIO directions are the three lowest values.
	 * 2 is input, 0 and 1 are output
	 */
	return val & 2;
}