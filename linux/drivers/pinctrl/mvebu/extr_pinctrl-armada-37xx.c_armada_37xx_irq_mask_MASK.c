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
struct irq_data {int mask; } ;
struct gpio_chip {int dummy; } ;
struct armada_37xx_pinctrl {int base; int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int IRQ_EN ; 
 int /*<<< orphan*/  FUNC0 (int*,struct irq_data*) ; 
 struct armada_37xx_pinctrl* FUNC1 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC2 (struct irq_data*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(struct irq_data *d)
{
	struct gpio_chip *chip = FUNC2(d);
	struct armada_37xx_pinctrl *info = FUNC1(chip);
	u32 val, reg = IRQ_EN;
	unsigned long flags;

	FUNC0(&reg, d);
	FUNC4(&info->irq_lock, flags);
	val = FUNC3(info->base + reg);
	FUNC6(val & ~d->mask, info->base + reg);
	FUNC5(&info->irq_lock, flags);
}