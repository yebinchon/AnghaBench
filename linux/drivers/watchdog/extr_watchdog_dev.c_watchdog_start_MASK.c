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
struct watchdog_device {int /*<<< orphan*/  status; TYPE_1__* ops; struct watchdog_core_data* wd_data; } ;
struct watchdog_core_data {int /*<<< orphan*/  last_keepalive; int /*<<< orphan*/  status; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_2__ {int (* ping ) (struct watchdog_device*) ;int (* start ) (struct watchdog_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  WDOG_ACTIVE ; 
 int /*<<< orphan*/  _WDOG_KEEPALIVE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct watchdog_device*) ; 
 int FUNC3 (struct watchdog_device*) ; 
 scalar_t__ FUNC4 (struct watchdog_device*) ; 
 scalar_t__ FUNC5 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC7(struct watchdog_device *wdd)
{
	struct watchdog_core_data *wd_data = wdd->wd_data;
	ktime_t started_at;
	int err;

	if (FUNC4(wdd))
		return 0;

	FUNC1(_WDOG_KEEPALIVE, &wd_data->status);

	started_at = FUNC0();
	if (FUNC5(wdd) && wdd->ops->ping)
		err = wdd->ops->ping(wdd);
	else
		err = wdd->ops->start(wdd);
	if (err == 0) {
		FUNC1(WDOG_ACTIVE, &wdd->status);
		wd_data->last_keepalive = started_at;
		FUNC6(wdd);
	}

	return err;
}