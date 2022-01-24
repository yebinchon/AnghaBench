#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timerqueue_node {scalar_t__ expires; } ;
struct rtc_wkalrm {int enabled; int /*<<< orphan*/  time; } ;
struct TYPE_5__ {int /*<<< orphan*/  expires; } ;
struct rtc_timer {int enabled; TYPE_2__ node; } ;
struct rtc_time {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct rtc_device {int /*<<< orphan*/  timerqueue; int /*<<< orphan*/  irqwork; TYPE_1__ dev; } ;
typedef  scalar_t__ ktime_t ;

/* Variables and functions */
 int ETIME ; 
 int /*<<< orphan*/  FUNC0 (struct rtc_device*,struct rtc_time*) ; 
 int FUNC1 (struct rtc_device*,struct rtc_wkalrm*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct rtc_time) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 struct timerqueue_node* FUNC9 (int /*<<< orphan*/ *) ; 
 struct timerqueue_node* FUNC10 (struct timerqueue_node*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtc_timer*) ; 
 int /*<<< orphan*/  FUNC12 (struct rtc_timer*) ; 

__attribute__((used)) static int FUNC13(struct rtc_device *rtc, struct rtc_timer *timer)
{
	struct timerqueue_node *next = FUNC9(&rtc->timerqueue);
	struct rtc_time tm;
	ktime_t now;

	timer->enabled = 1;
	FUNC0(rtc, &tm);
	now = FUNC5(tm);

	/* Skip over expired timers */
	while (next) {
		if (next->expires >= now)
			break;
		next = FUNC10(next);
	}

	FUNC7(&rtc->timerqueue, &timer->node);
	FUNC12(timer);
	if (!next || FUNC2(timer->node.expires, next->expires)) {
		struct rtc_wkalrm alarm;
		int err;

		alarm.time = FUNC4(timer->node.expires);
		alarm.enabled = 1;
		err = FUNC1(rtc, &alarm);
		if (err == -ETIME) {
			FUNC3(rtc->dev.parent);
			FUNC6(&rtc->irqwork);
		} else if (err) {
			FUNC8(&rtc->timerqueue, &timer->node);
			FUNC11(timer);
			timer->enabled = 0;
			return err;
		}
	}
	return 0;
}