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
struct retu_wdt_dev {int /*<<< orphan*/  ping_work; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct watchdog_device* FUNC1 (struct platform_device*) ; 
 struct retu_wdt_dev* FUNC2 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct watchdog_device *wdog = FUNC1(pdev);
	struct retu_wdt_dev *wdev = FUNC2(wdog);

	FUNC3(wdog);
	FUNC0(&wdev->ping_work);

	return 0;
}