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
struct st_gpio_bank {int dummy; } ;
struct gpio_chip {unsigned int base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct st_gpio_bank*,unsigned int,int) ; 
 struct st_gpio_bank* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip,
	unsigned offset, int value)
{
	struct st_gpio_bank *bank = FUNC1(chip);

	FUNC0(bank, offset, value);
	FUNC2(chip->base + offset);

	return 0;
}