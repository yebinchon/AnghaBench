#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int low_bat_delay; } ;
struct ab8500_fg {int /*<<< orphan*/  fg_low_bat_work; int /*<<< orphan*/  fg_wq; TYPE_1__ flags; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  LOW_BAT_CHECK_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *_di)
{
	struct ab8500_fg *di = _di;

	/* Initiate handling in ab8500_fg_low_bat_work() if not already initiated. */
	if (!di->flags.low_bat_delay) {
		FUNC0(di->dev, "Battery voltage is below LOW threshold\n");
		di->flags.low_bat_delay = true;
		/*
		 * Start a timer to check LOW_BAT again after some time
		 * This is done to avoid shutdown on single voltage dips
		 */
		FUNC1(di->fg_wq, &di->fg_low_bat_work,
			FUNC2(LOW_BAT_CHECK_INTERVAL));
	}
	return IRQ_HANDLED;
}