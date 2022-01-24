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
struct charger_manager {int /*<<< orphan*/  dev; int /*<<< orphan*/  fullbatt_vchk_work; scalar_t__ fullbatt_vchk_jiffies_at; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 unsigned long CM_JIFFIES_SMALL ; 
 int /*<<< orphan*/  FUNC0 (struct charger_manager*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long cm_suspend_duration_ms ; 
 int cm_suspended ; 
 int /*<<< orphan*/  cm_timer ; 
 int cm_timer_set ; 
 int /*<<< orphan*/  cm_wq ; 
 struct charger_manager* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 unsigned long jiffies ; 
 unsigned long FUNC5 (unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  setup_polling ; 
 scalar_t__ FUNC10 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct device *dev)
{
	struct charger_manager *cm = FUNC3(dev);

	if (cm_suspended)
		cm_suspended = false;

	if (cm_timer_set) {
		ktime_t remain;

		FUNC1(cm_timer);
		cm_timer_set = false;
		remain = FUNC2(cm_timer);
		cm_suspend_duration_ms -= FUNC6(remain);
		FUNC9(&setup_polling);
	}

	FUNC0(cm);

	/* Re-enqueue delayed work (fullbatt_vchk_work) */
	if (cm->fullbatt_vchk_jiffies_at) {
		unsigned long delay = 0;
		unsigned long now = jiffies + CM_JIFFIES_SMALL;

		if (FUNC10(now, cm->fullbatt_vchk_jiffies_at)) {
			delay = (unsigned long)((long)now
				- (long)(cm->fullbatt_vchk_jiffies_at));
			delay = FUNC5(delay);
		} else {
			delay = 0;
		}

		/*
		 * Account for cm_suspend_duration_ms with assuming that
		 * timer stops in suspend.
		 */
		if (delay > cm_suspend_duration_ms)
			delay -= cm_suspend_duration_ms;
		else
			delay = 0;

		FUNC8(cm_wq, &cm->fullbatt_vchk_work,
				   FUNC7(delay));
	}
	FUNC4(cm->dev, false);
}