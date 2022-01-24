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
struct gpio_chip {int dummy; } ;
struct atlas7_gpio_chip {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atlas7_gpio_chip*,unsigned int,int) ; 
 struct atlas7_gpio_chip* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip,
				unsigned int gpio, int value)
{
	struct atlas7_gpio_chip *a7gc = FUNC1(chip);
	unsigned long flags;

	FUNC2(&a7gc->lock, flags);

	FUNC0(a7gc, gpio, value);

	FUNC3(&a7gc->lock, flags);

	return 0;
}