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
struct owl_pinctrl {int dummy; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned int IRQ_TYPE_LEVEL_HIGH ; 
 unsigned int IRQ_TYPE_LEVEL_LOW ; 
 struct owl_pinctrl* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_level_irq ; 
 struct gpio_chip* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct owl_pinctrl*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct irq_data *data, unsigned int type)
{
	struct gpio_chip *gc = FUNC1(data);
	struct owl_pinctrl *pctrl = FUNC0(gc);

	if (type & (IRQ_TYPE_LEVEL_LOW | IRQ_TYPE_LEVEL_HIGH))
		FUNC2(data, handle_level_irq);
	else
		FUNC2(data, handle_edge_irq);

	FUNC3(pctrl, data->hwirq, type);

	return 0;
}