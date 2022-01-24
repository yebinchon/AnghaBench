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
struct arche_platform_drvdata {scalar_t__ wake_detect_state; int /*<<< orphan*/  wake_lock; scalar_t__ wake_detect_start; int /*<<< orphan*/  wake_detect; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  WD_COLDBOOT_PULSE_WIDTH_MS ; 
 scalar_t__ WD_STATE_BOOT_INIT ; 
 scalar_t__ WD_STATE_COLDBOOT_START ; 
 scalar_t__ WD_STATE_COLDBOOT_TRIG ; 
 scalar_t__ WD_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (struct arche_platform_drvdata*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *devid)
{
	struct arche_platform_drvdata *arche_pdata = devid;
	unsigned long flags;

	FUNC3(&arche_pdata->wake_lock, flags);

	if (FUNC1(arche_pdata->wake_detect)) {
		/* wake/detect rising */

		/*
		 * If wake/detect line goes high after low, within less than
		 * 30msec, then standby boot sequence is initiated, which is not
		 * supported/implemented as of now. So ignore it.
		 */
		if (arche_pdata->wake_detect_state == WD_STATE_BOOT_INIT) {
			if (FUNC5(jiffies,
					arche_pdata->wake_detect_start +
					FUNC2(WD_COLDBOOT_PULSE_WIDTH_MS))) {
				FUNC0(arche_pdata,
								     WD_STATE_IDLE);
			} else {
				/*
				 * Check we are not in middle of irq thread
				 * already
				 */
				if (arche_pdata->wake_detect_state !=
						WD_STATE_COLDBOOT_START) {
					FUNC0(arche_pdata,
									     WD_STATE_COLDBOOT_TRIG);
					FUNC4(
						&arche_pdata->wake_lock,
						flags);
					return IRQ_WAKE_THREAD;
				}
			}
		}
	} else {
		/* wake/detect falling */
		if (arche_pdata->wake_detect_state == WD_STATE_IDLE) {
			arche_pdata->wake_detect_start = jiffies;
			/*
			 * In the beginning, when wake/detect goes low
			 * (first time), we assume it is meant for coldboot
			 * and set the flag. If wake/detect line stays low
			 * beyond 30msec, then it is coldboot else fallback
			 * to standby boot.
			 */
			FUNC0(arche_pdata,
							     WD_STATE_BOOT_INIT);
		}
	}

	FUNC4(&arche_pdata->wake_lock, flags);

	return IRQ_HANDLED;
}