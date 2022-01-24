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
 int /*<<< orphan*/  MV64x60_WDC_ENABLED_FALSE ; 
 int /*<<< orphan*/  MV64x60_WDC_ENABLE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
	if (FUNC1(MV64x60_WDC_ENABLED_FALSE,
				   MV64x60_WDC_ENABLE_SHIFT)) {
		FUNC0();
		FUNC2("watchdog activated\n");
	}
}