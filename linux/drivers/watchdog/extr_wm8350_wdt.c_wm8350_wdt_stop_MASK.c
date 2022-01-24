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
typedef  int /*<<< orphan*/  u16 ;
struct wm8350 {int dummy; } ;
struct watchdog_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8350_SYSTEM_CONTROL_2 ; 
 int /*<<< orphan*/  WM8350_WDOG_MODE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct wm8350* FUNC2 (struct watchdog_device*) ; 
 int /*<<< orphan*/  wdt_mutex ; 
 int /*<<< orphan*/  FUNC3 (struct wm8350*) ; 
 int /*<<< orphan*/  FUNC4 (struct wm8350*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wm8350*) ; 
 int FUNC6 (struct wm8350*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct watchdog_device *wdt_dev)
{
	struct wm8350 *wm8350 = FUNC2(wdt_dev);
	int ret;
	u16 reg;

	FUNC0(&wdt_mutex);
	FUNC5(wm8350);

	reg = FUNC4(wm8350, WM8350_SYSTEM_CONTROL_2);
	reg &= ~WM8350_WDOG_MODE_MASK;
	ret = FUNC6(wm8350, WM8350_SYSTEM_CONTROL_2, reg);

	FUNC3(wm8350);
	FUNC1(&wdt_mutex);

	return ret;
}