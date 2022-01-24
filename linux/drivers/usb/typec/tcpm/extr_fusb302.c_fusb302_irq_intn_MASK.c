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
struct fusb302_chip {int irq_while_suspended; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  irq_work; scalar_t__ irq_suspended; int /*<<< orphan*/  gpio_int_n_irq; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct fusb302_chip *chip = dev_id;
	unsigned long flags;

	/* Disable our level triggered IRQ until our irq_work has cleared it */
	FUNC0(chip->gpio_int_n_irq);

	FUNC2(&chip->irq_lock, flags);
	if (chip->irq_suspended)
		chip->irq_while_suspended = true;
	else
		FUNC1(&chip->irq_work);
	FUNC3(&chip->irq_lock, flags);

	return IRQ_HANDLED;
}