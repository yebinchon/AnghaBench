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

/* Variables and functions */
 unsigned int IRQ_TYPE_EDGE_BOTH ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC0 (struct irq_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct irq_data *d, unsigned int type)
{
	/* Edge- and level-triggered interrupts need different handlers */
	if (type & IRQ_TYPE_EDGE_BOTH)
		FUNC0(d, handle_edge_irq);
	else
		FUNC0(d, handle_level_irq);
}