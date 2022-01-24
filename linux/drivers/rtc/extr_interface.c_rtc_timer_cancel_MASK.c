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
struct rtc_timer {scalar_t__ enabled; } ;
struct rtc_device {int /*<<< orphan*/  ops_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rtc_device*,struct rtc_timer*) ; 

void FUNC3(struct rtc_device *rtc, struct rtc_timer *timer)
{
	FUNC0(&rtc->ops_lock);
	if (timer->enabled)
		FUNC2(rtc, timer);
	FUNC1(&rtc->ops_lock);
}