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
struct watchdog_device {scalar_t__ id; struct watchdog_core_data* wd_data; int /*<<< orphan*/  status; } ;
struct watchdog_core_data {int /*<<< orphan*/  kref; int /*<<< orphan*/  work; int /*<<< orphan*/  timer; int /*<<< orphan*/  lock; int /*<<< orphan*/ * wdd; int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  WDOG_STOP_ON_UNREGISTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * old_wd_data ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct watchdog_device*) ; 
 int /*<<< orphan*/  watchdog_core_data_release ; 
 int /*<<< orphan*/  watchdog_miscdev ; 
 int /*<<< orphan*/  FUNC9 (struct watchdog_device*) ; 

__attribute__((used)) static void FUNC10(struct watchdog_device *wdd)
{
	struct watchdog_core_data *wd_data = wdd->wd_data;

	FUNC0(&wd_data->cdev);
	if (wdd->id == 0) {
		FUNC4(&watchdog_miscdev);
		old_wd_data = NULL;
	}

	if (FUNC8(wdd) &&
	    FUNC7(WDOG_STOP_ON_UNREGISTER, &wdd->status)) {
		FUNC9(wdd);
	}

	FUNC5(&wd_data->lock);
	wd_data->wdd = NULL;
	wdd->wd_data = NULL;
	FUNC6(&wd_data->lock);

	FUNC1(&wd_data->timer);
	FUNC3(&wd_data->work);

	FUNC2(&wd_data->kref, watchdog_core_data_release);
}