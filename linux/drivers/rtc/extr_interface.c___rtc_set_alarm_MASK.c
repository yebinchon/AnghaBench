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
typedef  scalar_t__ time64_t ;
struct rtc_time {int dummy; } ;
struct rtc_wkalrm {struct rtc_time time; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct rtc_device {TYPE_2__ dev; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_alarm ) (int /*<<< orphan*/ ,struct rtc_wkalrm*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ETIME ; 
 int FUNC0 (struct rtc_device*,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtc_device*,struct rtc_time*) ; 
 scalar_t__ FUNC2 (struct rtc_time*) ; 
 int FUNC3 (struct rtc_time*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct rtc_wkalrm*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC6(struct rtc_device *rtc, struct rtc_wkalrm *alarm)
{
	struct rtc_time tm;
	time64_t now, scheduled;
	int err;

	err = FUNC3(&alarm->time);
	if (err)
		return err;

	scheduled = FUNC2(&alarm->time);

	/* Make sure we're not setting alarms in the past */
	err = FUNC0(rtc, &tm);
	if (err)
		return err;
	now = FUNC2(&tm);
	if (scheduled <= now)
		return -ETIME;
	/*
	 * XXX - We just checked to make sure the alarm time is not
	 * in the past, but there is still a race window where if
	 * the is alarm set for the next second and the second ticks
	 * over right here, before we set the alarm.
	 */

	FUNC1(rtc, &alarm->time);

	if (!rtc->ops)
		err = -ENODEV;
	else if (!rtc->ops->set_alarm)
		err = -EINVAL;
	else
		err = rtc->ops->set_alarm(rtc->dev.parent, alarm);

	FUNC5(FUNC2(&alarm->time), err);
	return err;
}