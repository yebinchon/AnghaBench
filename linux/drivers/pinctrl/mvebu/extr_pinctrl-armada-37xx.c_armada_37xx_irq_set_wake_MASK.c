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
struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;
struct armada_37xx_pinctrl {int /*<<< orphan*/  irq_lock; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int GPIO_PER_REG ; 
 scalar_t__ IRQ_WKUP ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,struct irq_data*) ; 
 struct armada_37xx_pinctrl* FUNC2 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC3 (struct irq_data*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct irq_data *d, unsigned int on)
{
	struct gpio_chip *chip = FUNC3(d);
	struct armada_37xx_pinctrl *info = FUNC2(chip);
	u32 val, reg = IRQ_WKUP;
	unsigned long flags;

	FUNC1(&reg, d);
	FUNC5(&info->irq_lock, flags);
	val = FUNC4(info->base + reg);
	if (on)
		val |= (FUNC0(d->hwirq % GPIO_PER_REG));
	else
		val &= ~(FUNC0(d->hwirq % GPIO_PER_REG));
	FUNC7(val, info->base + reg);
	FUNC6(&info->irq_lock, flags);

	return 0;
}