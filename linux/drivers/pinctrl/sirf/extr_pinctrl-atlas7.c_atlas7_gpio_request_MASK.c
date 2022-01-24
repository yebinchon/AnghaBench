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
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct atlas7_gpio_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct atlas7_gpio_chip*,unsigned int) ; 
 int FUNC2 (struct atlas7_gpio_chip*,unsigned int) ; 
 struct atlas7_gpio_chip* FUNC3 (struct gpio_chip*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct gpio_chip *chip,
				unsigned int gpio)
{
	struct atlas7_gpio_chip *a7gc = FUNC3(chip);
	int ret;
	unsigned long flags;

	ret = FUNC2(a7gc, gpio);
	if (ret < 0)
		return ret;

	if (FUNC4(chip->base + gpio))
		return -ENODEV;

	FUNC5(&a7gc->lock, flags);

	/*
	 * default status:
	 * set direction as input and mask irq
	 */
	FUNC1(a7gc, gpio);
	FUNC0(a7gc, gpio);

	FUNC6(&a7gc->lock, flags);

	return 0;
}