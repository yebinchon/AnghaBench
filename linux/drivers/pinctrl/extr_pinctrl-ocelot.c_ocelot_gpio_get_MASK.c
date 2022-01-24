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
struct ocelot_pinctrl {int /*<<< orphan*/  map; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  OCELOT_GPIO_IN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ocelot_pinctrl*,unsigned int) ; 
 struct ocelot_pinctrl* FUNC2 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned int offset)
{
	struct ocelot_pinctrl *info = FUNC2(chip);
	unsigned int val;

	FUNC3(info->map, FUNC1(OCELOT_GPIO_IN, info, offset), &val);

	return !!(val & FUNC0(offset % 32));
}