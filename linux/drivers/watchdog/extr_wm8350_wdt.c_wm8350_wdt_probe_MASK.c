#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct wm8350 {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/ * parent; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  nowayout ; 
 struct wm8350* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct wm8350*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__ wm8350_wdt ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct wm8350 *wm8350 = FUNC0(pdev);

	if (!wm8350) {
		FUNC1("No driver data supplied\n");
		return -ENODEV;
	}

	FUNC4(&wm8350_wdt, nowayout);
	FUNC3(&wm8350_wdt, wm8350);
	wm8350_wdt.parent = &pdev->dev;

	/* Default to 4s timeout */
	FUNC5(&wm8350_wdt, 4);

	return FUNC2(&wm8350_wdt);
}