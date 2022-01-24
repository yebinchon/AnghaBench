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
struct wdtbd70528 {int /*<<< orphan*/  mfd; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
struct watchdog_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BD70528_MASK_WDT_HOUR ; 
 int /*<<< orphan*/  BD70528_MASK_WDT_MINUTE ; 
 int /*<<< orphan*/  BD70528_MASK_WDT_SEC ; 
 int /*<<< orphan*/  BD70528_REG_WDT_HOUR ; 
 int /*<<< orphan*/  BD70528_REG_WDT_MINUTE ; 
 int /*<<< orphan*/  BD70528_REG_WDT_SEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct wdtbd70528*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct wdtbd70528* FUNC7 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC8(struct watchdog_device *wdt,
				   unsigned int timeout)
{
	unsigned int hours;
	unsigned int minutes;
	unsigned int seconds;
	int ret;
	struct wdtbd70528 *w = FUNC7(wdt);

	seconds = timeout;
	hours = timeout / (60 * 60);
	/* Maximum timeout is 1h 59m 59s => hours is 1 or 0 */
	if (hours)
		seconds -= (60 * 60);
	minutes = seconds / 60;
	seconds = seconds % 60;

	FUNC0(w->mfd);

	ret = FUNC1(w, 0);
	if (ret)
		goto out_unlock;

	ret = FUNC6(w->regmap, BD70528_REG_WDT_HOUR,
				 BD70528_MASK_WDT_HOUR, hours);
	if (ret) {
		FUNC5(w->dev, "Failed to set WDT hours\n");
		goto out_en_unlock;
	}
	ret = FUNC6(w->regmap, BD70528_REG_WDT_MINUTE,
				 BD70528_MASK_WDT_MINUTE, FUNC3(minutes));
	if (ret) {
		FUNC5(w->dev, "Failed to set WDT minutes\n");
		goto out_en_unlock;
	}
	ret = FUNC6(w->regmap, BD70528_REG_WDT_SEC,
				 BD70528_MASK_WDT_SEC, FUNC3(seconds));
	if (ret)
		FUNC5(w->dev, "Failed to set WDT seconds\n");
	else
		FUNC4(w->dev, "WDT tmo set to %u\n", timeout);

out_en_unlock:
	ret = FUNC1(w, 1);
out_unlock:
	FUNC2(w->mfd);

	return ret;
}