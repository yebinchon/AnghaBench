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
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct ingenic_gpio_chip {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_MSK ; 
 struct ingenic_gpio_chip* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct ingenic_gpio_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct gpio_chip* FUNC2 (struct irq_data*) ; 

__attribute__((used)) static void FUNC3(struct irq_data *irqd)
{
	struct gpio_chip *gc = FUNC2(irqd);
	struct ingenic_gpio_chip *jzgc = FUNC0(gc);

	FUNC1(jzgc, GPIO_MSK, irqd->hwirq, false);
}