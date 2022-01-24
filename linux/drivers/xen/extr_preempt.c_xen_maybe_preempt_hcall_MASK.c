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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  xen_in_preemptible_hcall ; 

void FUNC5(void)
{
	if (FUNC4(FUNC0(xen_in_preemptible_hcall)
		     && FUNC3())) {
		/*
		 * Clear flag as we may be rescheduled on a different
		 * cpu.
		 */
		FUNC1(xen_in_preemptible_hcall, false);
		FUNC2();
		FUNC1(xen_in_preemptible_hcall, true);
	}
}