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
struct w1_slave {struct ds2760_device_info* family_data; } ;
struct ds2760_device_info {int /*<<< orphan*/  bat; int /*<<< orphan*/  monitor_wqueue; int /*<<< orphan*/  set_charged_work; int /*<<< orphan*/  monitor_work; int /*<<< orphan*/  pm_notifier; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct w1_slave *sl)
{
	struct ds2760_device_info *di = sl->family_data;

	FUNC3(&di->pm_notifier);
	FUNC0(&di->monitor_work);
	FUNC0(&di->set_charged_work);
	FUNC1(di->monitor_wqueue);
	FUNC2(di->bat);
}