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
struct omap_wdt_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; scalar_t__ omap_wdt_users; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_wdt_dev*) ; 
 struct omap_wdt_dev* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct platform_device *pdev)
{
	struct omap_wdt_dev *wdev = FUNC3(pdev);

	FUNC0(&wdev->lock);
	if (wdev->omap_wdt_users) {
		FUNC2(wdev);
		FUNC4(wdev->dev);
	}
	FUNC1(&wdev->lock);
}