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
struct pic32_gpio_bank {scalar_t__ reg_base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 scalar_t__ PORT_REG ; 
 struct pic32_gpio_bank* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip, unsigned offset)
{
	struct pic32_gpio_bank *bank = FUNC1(chip);

	return !!(FUNC2(bank->reg_base + PORT_REG) & FUNC0(offset));
}