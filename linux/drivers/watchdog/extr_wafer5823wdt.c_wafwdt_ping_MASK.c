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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wafwdt_lock ; 
 int /*<<< orphan*/  wdt_start ; 
 int /*<<< orphan*/  wdt_stop ; 

__attribute__((used)) static void FUNC3(void)
{
	/* pat watchdog */
	FUNC1(&wafwdt_lock);
	FUNC0(wdt_stop);
	FUNC0(wdt_start);
	FUNC2(&wafwdt_lock);
}