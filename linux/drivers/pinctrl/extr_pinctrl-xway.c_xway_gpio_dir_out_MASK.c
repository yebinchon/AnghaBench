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
struct ltq_pinmux_info {int /*<<< orphan*/ * membase; } ;
struct gpio_chip {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO3_OD ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ PORT3 ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 struct ltq_pinmux_info* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gpio_chip*,unsigned int,int) ; 

__attribute__((used)) static int FUNC7(struct gpio_chip *chip, unsigned int pin, int val)
{
	struct ltq_pinmux_info *info = FUNC4(chip->parent);

	if (FUNC2(pin) == PORT3)
		FUNC5(info->membase[0], GPIO3_OD, FUNC3(pin));
	else
		FUNC5(info->membase[0], FUNC1(pin), FUNC3(pin));
	FUNC5(info->membase[0], FUNC0(pin), FUNC3(pin));
	FUNC6(chip, pin, val);

	return 0;
}