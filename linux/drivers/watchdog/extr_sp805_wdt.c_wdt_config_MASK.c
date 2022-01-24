#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct watchdog_device {int dummy; } ;
struct sp805_wdt {int load_val; int /*<<< orphan*/  lock; scalar_t__ base; TYPE_1__* adev; int /*<<< orphan*/  clk; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int INT_ENABLE ; 
 int INT_MASK ; 
 int LOCK ; 
 int RESET_ENABLE ; 
 int UNLOCK ; 
 scalar_t__ WDTCONTROL ; 
 scalar_t__ WDTINTCLR ; 
 scalar_t__ WDTLOAD ; 
 scalar_t__ WDTLOCK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct sp805_wdt* FUNC5 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct watchdog_device *wdd, bool ping)
{
	struct sp805_wdt *wdt = FUNC5(wdd);
	int ret;

	if (!ping) {

		ret = FUNC0(wdt->clk);
		if (ret) {
			FUNC1(&wdt->adev->dev, "clock enable fail");
			return ret;
		}
	}

	FUNC3(&wdt->lock);

	FUNC6(UNLOCK, wdt->base + WDTLOCK);
	FUNC6(wdt->load_val, wdt->base + WDTLOAD);
	FUNC6(INT_MASK, wdt->base + WDTINTCLR);

	if (!ping)
		FUNC6(INT_ENABLE | RESET_ENABLE, wdt->base +
				WDTCONTROL);

	FUNC6(LOCK, wdt->base + WDTLOCK);

	/* Flush posted writes. */
	FUNC2(wdt->base + WDTLOCK);
	FUNC4(&wdt->lock);

	return 0;
}