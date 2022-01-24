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
struct platform_device {int dummy; } ;
struct omap_wdt_dev {int /*<<< orphan*/  wdog; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct omap_wdt_dev* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct omap_wdt_dev *wdev = FUNC0(pdev);

	FUNC1(wdev->dev);
	FUNC2(&wdev->wdog);

	return 0;
}