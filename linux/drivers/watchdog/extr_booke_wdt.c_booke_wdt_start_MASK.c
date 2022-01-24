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
struct watchdog_device {int /*<<< orphan*/  timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  __booke_wdt_enable ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct watchdog_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdog)
{
	FUNC0(__booke_wdt_enable, wdog, 0);
	FUNC1("watchdog enabled (timeout = %u sec)\n", wdog->timeout);

	return 0;
}