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
struct imx7ulp_wdt_device {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct imx7ulp_wdt_device* FUNC1 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdog)
{
	struct imx7ulp_wdt_device *wdt = FUNC1(wdog);

	FUNC0(wdt->base, false);

	return 0;
}