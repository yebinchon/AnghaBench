#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rtc_time {int dummy; } ;
struct rtc_wkalrm {scalar_t__ enabled; struct rtc_time time; } ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct TYPE_3__ {int enabled; TYPE_2__ node; scalar_t__ period; } ;
struct rtc_device {int /*<<< orphan*/  ops_lock; TYPE_1__ aie_timer; int /*<<< orphan*/  timerqueue; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct rtc_device*,struct rtc_time*) ; 
 scalar_t__ FUNC3 (struct rtc_time) ; 
 int FUNC4 (struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

int FUNC7(struct rtc_device *rtc, struct rtc_wkalrm *alarm)
{
	int err;
	struct rtc_time now;

	err = FUNC4(&alarm->time);
	if (err != 0)
		return err;

	err = FUNC2(rtc, &now);
	if (err)
		return err;

	err = FUNC0(&rtc->ops_lock);
	if (err)
		return err;

	rtc->aie_timer.node.expires = FUNC3(alarm->time);
	rtc->aie_timer.period = 0;

	/* Alarm has to be enabled & in the future for us to enqueue it */
	if (alarm->enabled && (FUNC3(now) <
			 rtc->aie_timer.node.expires)) {
		rtc->aie_timer.enabled = 1;
		FUNC5(&rtc->timerqueue, &rtc->aie_timer.node);
		FUNC6(&rtc->aie_timer);
	}
	FUNC1(&rtc->ops_lock);
	return err;
}