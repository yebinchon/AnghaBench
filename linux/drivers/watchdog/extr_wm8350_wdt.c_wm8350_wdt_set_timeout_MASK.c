#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct wm8350 {int dummy; } ;
struct watchdog_device {unsigned int timeout; } ;
struct TYPE_3__ {unsigned int time; int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  WM8350_SYSTEM_CONTROL_2 ; 
 int /*<<< orphan*/  WM8350_WDOG_TO_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct wm8350* FUNC3 (struct watchdog_device*) ; 
 int /*<<< orphan*/  wdt_mutex ; 
 int /*<<< orphan*/  FUNC4 (struct wm8350*) ; 
 int /*<<< orphan*/  FUNC5 (struct wm8350*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wm8350*) ; 
 int FUNC7 (struct wm8350*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* wm8350_wdt_cfgs ; 

__attribute__((used)) static int FUNC8(struct watchdog_device *wdt_dev,
				  unsigned int timeout)
{
	struct wm8350 *wm8350 = FUNC3(wdt_dev);
	int ret, i;
	u16 reg;

	for (i = 0; i < FUNC0(wm8350_wdt_cfgs); i++)
		if (wm8350_wdt_cfgs[i].time == timeout)
			break;
	if (i == FUNC0(wm8350_wdt_cfgs))
		return -EINVAL;

	FUNC1(&wdt_mutex);
	FUNC6(wm8350);

	reg = FUNC5(wm8350, WM8350_SYSTEM_CONTROL_2);
	reg &= ~WM8350_WDOG_TO_MASK;
	reg |= wm8350_wdt_cfgs[i].val;
	ret = FUNC7(wm8350, WM8350_SYSTEM_CONTROL_2, reg);

	FUNC4(wm8350);
	FUNC2(&wdt_mutex);

	wdt_dev->timeout = timeout;
	return ret;
}