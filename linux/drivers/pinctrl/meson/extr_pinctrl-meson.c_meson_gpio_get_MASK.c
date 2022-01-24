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
struct meson_pinctrl {int /*<<< orphan*/  reg_gpio; } ;
struct meson_bank {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  REG_IN ; 
 struct meson_pinctrl* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct meson_bank*,unsigned int,int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 
 int FUNC3 (struct meson_pinctrl*,unsigned int,struct meson_bank**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int,unsigned int*) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *chip, unsigned gpio)
{
	struct meson_pinctrl *pc = FUNC1(chip);
	unsigned int reg, bit, val;
	struct meson_bank *bank;
	int ret;

	ret = FUNC3(pc, gpio, &bank);
	if (ret)
		return ret;

	FUNC2(bank, gpio, REG_IN, &reg, &bit);
	FUNC4(pc->reg_gpio, reg, &val);

	return !!(val & FUNC0(bit));
}