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
struct irq_data {int dummy; } ;
struct ingenic_gpio_chip {int /*<<< orphan*/  irq; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct ingenic_gpio_chip* FUNC0 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC1 (struct irq_data*) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct irq_data *irqd, unsigned int on)
{
	struct gpio_chip *gc = FUNC1(irqd);
	struct ingenic_gpio_chip *jzgc = FUNC0(gc);

	return FUNC2(jzgc->irq, on);
}