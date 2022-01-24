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
typedef  int u32 ;
struct gpio_chip {int dummy; } ;
struct amd_gpio {int /*<<< orphan*/  lock; scalar_t__ base; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PIN_STS_OFF ; 
 struct amd_gpio* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *gc, unsigned offset)
{
	u32 pin_reg;
	unsigned long flags;
	struct amd_gpio *gpio_dev = FUNC1(gc);

	FUNC2(&gpio_dev->lock, flags);
	pin_reg = FUNC4(gpio_dev->base + offset * 4);
	FUNC3(&gpio_dev->lock, flags);

	return !!(pin_reg & FUNC0(PIN_STS_OFF));
}