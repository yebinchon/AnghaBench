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
struct fusb302_chip {int irq_suspended; int /*<<< orphan*/  irq_work; int /*<<< orphan*/  irq_lock; } ;
struct device {struct fusb302_chip* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct fusb302_chip *chip = dev->driver_data;
	unsigned long flags;

	FUNC1(&chip->irq_lock, flags);
	chip->irq_suspended = true;
	FUNC2(&chip->irq_lock, flags);

	/* Make sure any pending irq_work is finished before the bus suspends */
	FUNC0(&chip->irq_work);
	return 0;
}