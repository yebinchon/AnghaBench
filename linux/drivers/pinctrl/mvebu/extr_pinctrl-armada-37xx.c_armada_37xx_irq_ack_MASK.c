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
typedef  scalar_t__ u32 ;
struct irq_data {int /*<<< orphan*/  mask; } ;
struct gpio_chip {int dummy; } ;
struct armada_37xx_pinctrl {int /*<<< orphan*/  irq_lock; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ IRQ_STATUS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,struct irq_data*) ; 
 struct armada_37xx_pinctrl* FUNC1 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct irq_data *d)
{
	struct gpio_chip *chip = FUNC2(d);
	struct armada_37xx_pinctrl *info = FUNC1(chip);
	u32 reg = IRQ_STATUS;
	unsigned long flags;

	FUNC0(&reg, d);
	FUNC3(&info->irq_lock, flags);
	FUNC5(d->mask, info->base + reg);
	FUNC4(&info->irq_lock, flags);
}