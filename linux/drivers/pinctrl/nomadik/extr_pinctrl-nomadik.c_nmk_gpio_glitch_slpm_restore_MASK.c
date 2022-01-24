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
struct nmk_gpio_chip {int /*<<< orphan*/  clk; scalar_t__ addr; } ;

/* Variables and functions */
 scalar_t__ NMK_GPIO_SLPC ; 
 int NUM_BANKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct nmk_gpio_chip** nmk_gpio_chips ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(unsigned int *slpm)
{
	int i;

	for (i = 0; i < NUM_BANKS; i++) {
		struct nmk_gpio_chip *chip = nmk_gpio_chips[i];

		if (!chip)
			break;

		FUNC1(slpm[i], chip->addr + NMK_GPIO_SLPC);

		FUNC0(chip->clk);
	}
}