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
struct gpio_chip {scalar_t__ base; } ;
struct atlas7_gpio_chip {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atlas7_gpio_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct atlas7_gpio_chip*,unsigned int) ; 
 struct atlas7_gpio_chip* FUNC2 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct gpio_chip *chip,
				unsigned int gpio)
{
	struct atlas7_gpio_chip *a7gc = FUNC2(chip);
	unsigned long flags;

	FUNC4(&a7gc->lock, flags);

	FUNC0(a7gc, gpio);
	FUNC1(a7gc, gpio);

	FUNC5(&a7gc->lock, flags);

	FUNC3(chip->base + gpio);
}