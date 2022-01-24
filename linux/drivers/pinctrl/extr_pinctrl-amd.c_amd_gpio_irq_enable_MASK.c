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
typedef  int /*<<< orphan*/  u32 ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;
struct amd_gpio {int /*<<< orphan*/  lock; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTERRUPT_ENABLE_OFF ; 
 int /*<<< orphan*/  INTERRUPT_MASK_OFF ; 
 struct amd_gpio* FUNC1 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct irq_data *d)
{
	u32 pin_reg;
	unsigned long flags;
	struct gpio_chip *gc = FUNC2(d);
	struct amd_gpio *gpio_dev = FUNC1(gc);

	FUNC3(&gpio_dev->lock, flags);
	pin_reg = FUNC5(gpio_dev->base + (d->hwirq)*4);
	pin_reg |= FUNC0(INTERRUPT_ENABLE_OFF);
	pin_reg |= FUNC0(INTERRUPT_MASK_OFF);
	FUNC6(pin_reg, gpio_dev->base + (d->hwirq)*4);
	FUNC4(&gpio_dev->lock, flags);
}