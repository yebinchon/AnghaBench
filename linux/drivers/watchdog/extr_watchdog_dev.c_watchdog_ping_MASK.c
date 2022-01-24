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
struct watchdog_core_data {int /*<<< orphan*/  last_keepalive; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  _WDOG_KEEPALIVE ; 
 int FUNC0 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC5(struct watchdog_device *wdd)
{
	struct watchdog_core_data *wd_data = wdd->wd_data;

	if (!FUNC3(wdd) && !FUNC4(wdd))
		return 0;

	FUNC2(_WDOG_KEEPALIVE, &wd_data->status);

	wd_data->last_keepalive = FUNC1();
	return FUNC0(wdd);
}