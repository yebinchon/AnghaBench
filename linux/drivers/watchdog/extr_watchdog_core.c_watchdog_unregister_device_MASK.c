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
struct watchdog_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct watchdog_device*) ; 
 scalar_t__ wtd_deferred_reg_done ; 
 int /*<<< orphan*/  wtd_deferred_reg_mutex ; 

void FUNC4(struct watchdog_device *wdd)
{
	FUNC1(&wtd_deferred_reg_mutex);
	if (wtd_deferred_reg_done)
		FUNC0(wdd);
	else
		FUNC3(wdd);
	FUNC2(&wtd_deferred_reg_mutex);
}