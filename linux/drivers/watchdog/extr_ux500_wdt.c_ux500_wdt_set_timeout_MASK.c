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
 int /*<<< orphan*/  PRCMU_WDOG_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdd,
				 unsigned int timeout)
{
	FUNC2(wdd);
	FUNC0(PRCMU_WDOG_ALL, timeout * 1000);
	FUNC1(wdd);

	return 0;
}