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
struct bq27xxx_device_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; int /*<<< orphan*/  bat; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  bq27xxx_list_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ poll_interval ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct bq27xxx_device_info *di)
{
	/*
	 * power_supply_unregister call bq27xxx_battery_get_property which
	 * call bq27xxx_battery_poll.
	 * Make sure that bq27xxx_battery_poll will not call
	 * schedule_delayed_work again after unregister (which cause OOPS).
	 */
	poll_interval = 0;

	FUNC0(&di->work);

	FUNC5(di->bat);

	FUNC3(&bq27xxx_list_lock);
	FUNC1(&di->list);
	FUNC4(&bq27xxx_list_lock);

	FUNC2(&di->lock);
}