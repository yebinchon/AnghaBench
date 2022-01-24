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
struct smsm_entry {int /*<<< orphan*/  irq_falling; int /*<<< orphan*/  irq_rising; } ;
struct irq_data {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int IRQ_TYPE_EDGE_BOTH ; 
 unsigned int IRQ_TYPE_EDGE_FALLING ; 
 unsigned int IRQ_TYPE_EDGE_RISING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct smsm_entry* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct irq_data *irqd, unsigned int type)
{
	struct smsm_entry *entry = FUNC1(irqd);
	irq_hw_number_t irq = FUNC2(irqd);

	if (!(type & IRQ_TYPE_EDGE_BOTH))
		return -EINVAL;

	if (type & IRQ_TYPE_EDGE_RISING)
		FUNC3(irq, entry->irq_rising);
	else
		FUNC0(irq, entry->irq_rising);

	if (type & IRQ_TYPE_EDGE_FALLING)
		FUNC3(irq, entry->irq_falling);
	else
		FUNC0(irq, entry->irq_falling);

	return 0;
}