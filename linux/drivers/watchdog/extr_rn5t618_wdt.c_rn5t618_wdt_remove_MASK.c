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
struct rn5t618_wdt {int /*<<< orphan*/  wdt_dev; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 struct rn5t618_wdt* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct rn5t618_wdt *wdt = FUNC0(pdev);

	FUNC1(&wdt->wdt_dev);

	return 0;
}