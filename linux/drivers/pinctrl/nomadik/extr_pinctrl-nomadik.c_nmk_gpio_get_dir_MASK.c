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
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 scalar_t__ NMK_GPIO_DIR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct nmk_gpio_chip* FUNC3 (struct gpio_chip*) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *chip, unsigned offset)
{
	struct nmk_gpio_chip *nmk_chip = FUNC3(chip);
	int dir;

	FUNC2(nmk_chip->clk);

	dir = !(FUNC4(nmk_chip->addr + NMK_GPIO_DIR) & FUNC0(offset));

	FUNC1(nmk_chip->clk);

	return dir;
}