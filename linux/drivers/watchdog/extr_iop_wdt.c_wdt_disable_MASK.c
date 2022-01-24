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
 int /*<<< orphan*/  IOP_WDTCR_DIS ; 
 int /*<<< orphan*/  IOP_WDTCR_DIS_ARM ; 
 int /*<<< orphan*/  WDT_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdt_lock ; 
 int /*<<< orphan*/  wdt_status ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
	/* Stop Counting */
	if (FUNC4()) {
		FUNC2(&wdt_lock);
		FUNC5(IOP_WDTCR_DIS_ARM);
		FUNC5(IOP_WDTCR_DIS);
		FUNC0(WDT_ENABLED, &wdt_status);
		FUNC3(&wdt_lock);
		FUNC1("Disabled\n");
		return 0;
	} else
		return 1;
}