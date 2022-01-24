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
struct platform_device {int dummy; } ;
struct orion_watchdog {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct watchdog_device* FUNC2 (struct platform_device*) ; 
 struct orion_watchdog* FUNC3 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct watchdog_device *wdt_dev = FUNC2(pdev);
	struct orion_watchdog *dev = FUNC3(wdt_dev);

	FUNC4(wdt_dev);
	FUNC0(dev->clk);
	FUNC1(dev->clk);
	return 0;
}