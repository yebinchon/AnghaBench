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
struct dc_wdt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dc_wdt*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct dc_wdt* FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdog, unsigned long action,
			  void *data)
{
	struct dc_wdt *wdt = FUNC2(wdog);

	FUNC0(wdt, 1);
	/* wait for reset to assert... */
	FUNC1(500);

	return 0;
}