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
struct pic32_gpio_bank {scalar_t__ reg_base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PORT_REG ; 
 struct pic32_gpio_bank* FUNC3 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct gpio_chip *chip, unsigned offset,
			       int value)
{
	struct pic32_gpio_bank *bank = FUNC3(chip);
	u32 mask = FUNC0(offset);

	if (value)
		FUNC4(mask, bank->reg_base + FUNC2(PORT_REG));
	else
		FUNC4(mask, bank->reg_base + FUNC1(PORT_REG));
}