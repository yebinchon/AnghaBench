#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct irq_data {int hwirq; } ;
struct ingenic_gpio_chip {TYPE_1__* jzpc; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {scalar_t__ version; } ;

/* Variables and functions */
 scalar_t__ ID_JZ4760 ; 
 int /*<<< orphan*/  JZ4740_GPIO_SELECT ; 
 int /*<<< orphan*/  JZ4760_GPIO_INT ; 
 struct ingenic_gpio_chip* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct ingenic_gpio_chip*,int /*<<< orphan*/ ,int,int) ; 
 struct gpio_chip* FUNC3 (struct irq_data*) ; 

__attribute__((used)) static void FUNC4(struct irq_data *irqd)
{
	struct gpio_chip *gc = FUNC3(irqd);
	struct ingenic_gpio_chip *jzgc = FUNC0(gc);
	int irq = irqd->hwirq;

	if (jzgc->jzpc->version >= ID_JZ4760)
		FUNC2(jzgc, JZ4760_GPIO_INT, irq, true);
	else
		FUNC2(jzgc, JZ4740_GPIO_SELECT, irq, true);

	FUNC1(irqd);
}