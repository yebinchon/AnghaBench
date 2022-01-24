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
typedef  int uint32_t ;
struct goldfish_battery_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  ac; int /*<<< orphan*/  battery; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int AC_STATUS_CHANGED ; 
 int BATTERY_INT_MASK ; 
 int /*<<< orphan*/  BATTERY_INT_STATUS ; 
 int BATTERY_STATUS_CHANGED ; 
 int FUNC0 (struct goldfish_battery_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	unsigned long irq_flags;
	struct goldfish_battery_data *data = dev_id;
	uint32_t status;

	FUNC2(&data->lock, irq_flags);

	/* read status flags, which will clear the interrupt */
	status = FUNC0(data, BATTERY_INT_STATUS);
	status &= BATTERY_INT_MASK;

	if (status & BATTERY_STATUS_CHANGED)
		FUNC1(data->battery);
	if (status & AC_STATUS_CHANGED)
		FUNC1(data->ac);

	FUNC3(&data->lock, irq_flags);
	return status ? IRQ_HANDLED : IRQ_NONE;
}