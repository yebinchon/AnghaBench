#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int safety_timer_expired; } ;
struct TYPE_5__ {int charger_type; } ;
struct abx500_chargalg {int /*<<< orphan*/  safety_timer; TYPE_1__ events; int /*<<< orphan*/  dev; TYPE_3__* bm; TYPE_2__ chg_info; } ;
struct TYPE_6__ {int main_safety_tmr_h; int usb_safety_tmr_h; } ;

/* Variables and functions */
#define  AC_CHG 129 
 int FIVE_MINUTES_IN_SECONDS ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int ONE_HOUR_IN_SECONDS ; 
#define  USB_CHG 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct abx500_chargalg *di)
{
	/* Charger-dependent expiration time in hours*/
	int timer_expiration = 0;

	switch (di->chg_info.charger_type) {
	case AC_CHG:
		timer_expiration = di->bm->main_safety_tmr_h;
		break;

	case USB_CHG:
		timer_expiration = di->bm->usb_safety_tmr_h;
		break;

	default:
		FUNC0(di->dev, "Unknown charger to charge from\n");
		break;
	}

	di->events.safety_timer_expired = false;
	FUNC1(&di->safety_timer,
		FUNC3(timer_expiration * ONE_HOUR_IN_SECONDS, 0),
		FUNC3(FIVE_MINUTES_IN_SECONDS, 0));
	FUNC2(&di->safety_timer, HRTIMER_MODE_REL);
}