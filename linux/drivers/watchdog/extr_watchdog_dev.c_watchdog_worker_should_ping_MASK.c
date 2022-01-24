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
struct watchdog_core_data {struct watchdog_device* wdd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct watchdog_device*) ; 
 scalar_t__ FUNC1 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct watchdog_core_data*) ; 

__attribute__((used)) static bool FUNC3(struct watchdog_core_data *wd_data)
{
	struct watchdog_device *wdd = wd_data->wdd;

	if (!wdd)
		return false;

	if (FUNC0(wdd))
		return true;

	return FUNC1(wdd) && !FUNC2(wd_data);
}