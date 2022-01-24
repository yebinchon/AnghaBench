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

/* Variables and functions */
 int /*<<< orphan*/  ap_config_timer ; 
 int /*<<< orphan*/  ap_scan_work ; 
 scalar_t__ ap_suspend_flag ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_long_wq ; 

void FUNC3(void)
{
	if (ap_suspend_flag)
		return;
	/* processing a asynchronous bus rescan */
	FUNC0(&ap_config_timer);
	FUNC2(system_long_wq, &ap_scan_work);
	FUNC1(&ap_scan_work);
}