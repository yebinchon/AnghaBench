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
struct pistachio_gpio_bank {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_OUTPUT_EN ; 
 int /*<<< orphan*/  FUNC0 (struct pistachio_gpio_bank*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct pistachio_gpio_bank*,int /*<<< orphan*/ ,unsigned int,int) ; 
 struct pistachio_gpio_bank* FUNC2 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct gpio_chip*,unsigned int,int) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip,
					   unsigned offset, int value)
{
	struct pistachio_gpio_bank *bank = FUNC2(chip);

	FUNC3(chip, offset, value);
	FUNC1(bank, GPIO_OUTPUT_EN, offset, 1);
	FUNC0(bank, offset);

	return 0;
}