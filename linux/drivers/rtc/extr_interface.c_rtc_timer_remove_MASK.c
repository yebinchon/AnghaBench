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
struct timerqueue_node {int /*<<< orphan*/  expires; } ;
struct rtc_wkalrm {int enabled; int /*<<< orphan*/  time; } ;
struct rtc_timer {struct timerqueue_node node; scalar_t__ enabled; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct rtc_device {int /*<<< orphan*/  irqwork; TYPE_1__ dev; int /*<<< orphan*/  timerqueue; } ;

/* Variables and functions */
 int ETIME ; 
 int FUNC0 (struct rtc_device*,struct rtc_wkalrm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtc_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct timerqueue_node*) ; 
 struct timerqueue_node* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rtc_timer*) ; 

__attribute__((used)) static void FUNC8(struct rtc_device *rtc, struct rtc_timer *timer)
{
	struct timerqueue_node *next = FUNC6(&rtc->timerqueue);

	FUNC5(&rtc->timerqueue, &timer->node);
	FUNC7(timer);
	timer->enabled = 0;
	if (next == &timer->node) {
		struct rtc_wkalrm alarm;
		int err;

		next = FUNC6(&rtc->timerqueue);
		if (!next) {
			FUNC2(rtc);
			return;
		}
		alarm.time = FUNC3(next->expires);
		alarm.enabled = 1;
		err = FUNC0(rtc, &alarm);
		if (err == -ETIME) {
			FUNC1(rtc->dev.parent);
			FUNC4(&rtc->irqwork);
		}
	}
}