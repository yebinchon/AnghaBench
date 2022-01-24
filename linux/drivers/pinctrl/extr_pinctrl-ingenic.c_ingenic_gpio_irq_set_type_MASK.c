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
#define  IRQ_TYPE_EDGE_BOTH 132 
#define  IRQ_TYPE_EDGE_FALLING 131 
#define  IRQ_TYPE_EDGE_RISING 130 
#define  IRQ_TYPE_LEVEL_HIGH 129 
#define  IRQ_TYPE_LEVEL_LOW 128 
 struct ingenic_gpio_chip* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  handle_bad_irq ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int FUNC1 (struct ingenic_gpio_chip*,int /*<<< orphan*/ ) ; 
 struct gpio_chip* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ingenic_gpio_chip*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct irq_data *irqd, unsigned int type)
{
	struct gpio_chip *gc = FUNC2(irqd);
	struct ingenic_gpio_chip *jzgc = FUNC0(gc);

	switch (type) {
	case IRQ_TYPE_EDGE_BOTH:
	case IRQ_TYPE_EDGE_RISING:
	case IRQ_TYPE_EDGE_FALLING:
		FUNC3(irqd, handle_edge_irq);
		break;
	case IRQ_TYPE_LEVEL_HIGH:
	case IRQ_TYPE_LEVEL_LOW:
		FUNC3(irqd, handle_level_irq);
		break;
	default:
		FUNC3(irqd, handle_bad_irq);
	}

	if (type == IRQ_TYPE_EDGE_BOTH) {
		/*
		 * The hardware does not support interrupts on both edges. The
		 * best we can do is to set up a single-edge interrupt and then
		 * switch to the opposing edge when ACKing the interrupt.
		 */
		bool high = FUNC1(jzgc, irqd->hwirq);

		type = high ? IRQ_TYPE_EDGE_FALLING : IRQ_TYPE_EDGE_RISING;
	}

	FUNC4(jzgc, irqd->hwirq, type);
	return 0;
}