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
typedef  scalar_t__ u32 ;
struct stm32_gpio_bank {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct stm32_gpio_bank* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct stm32_gpio_bank*,int,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip, unsigned int offset)
{
	struct stm32_gpio_bank *bank = FUNC0(chip);
	int pin = FUNC1(offset);
	int ret;
	u32 mode, alt;

	FUNC2(bank, pin, &mode, &alt);
	if ((alt == 0) && (mode == 0))
		ret = 1;
	else if ((alt == 0) && (mode == 1))
		ret = 0;
	else
		ret = -EINVAL;

	return ret;
}