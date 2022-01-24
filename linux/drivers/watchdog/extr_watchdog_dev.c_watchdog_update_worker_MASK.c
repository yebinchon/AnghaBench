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
struct watchdog_device {struct watchdog_core_data* wd_data; } ;
struct watchdog_core_data {int /*<<< orphan*/  timer; } ;
typedef  scalar_t__ ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct watchdog_device*) ; 
 scalar_t__ FUNC3 (struct watchdog_device*) ; 

__attribute__((used)) static inline void FUNC4(struct watchdog_device *wdd)
{
	struct watchdog_core_data *wd_data = wdd->wd_data;

	if (FUNC2(wdd)) {
		ktime_t t = FUNC3(wdd);

		if (t > 0)
			FUNC1(&wd_data->timer, t, HRTIMER_MODE_REL);
	} else {
		FUNC0(&wd_data->timer);
	}
}