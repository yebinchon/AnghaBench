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
struct device {int dummy; } ;
struct charger_manager {int /*<<< orphan*/  fullbatt_vchk_work; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cm_monitor_work ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int cm_suspended ; 
 scalar_t__ cm_timer_set ; 
 struct charger_manager* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  setup_polling ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct charger_manager *cm = FUNC5(dev);

	if (FUNC3())
		return -EBUSY;

	if (!cm_suspended)
		cm_suspended = true;

	cm_timer_set = FUNC4();

	if (cm_timer_set) {
		FUNC2(&setup_polling);
		FUNC1(&cm_monitor_work);
		FUNC0(&cm->fullbatt_vchk_work);
	}

	return 0;
}