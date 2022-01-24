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
typedef  scalar_t__ u32 ;
struct tegra_rtc_info {scalar_t__ base; } ;
struct rtc_wkalrm {int /*<<< orphan*/  time; scalar_t__ enabled; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ TEGRA_RTC_REG_SECONDS_ALARM0 ; 
 struct tegra_rtc_info* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct rtc_wkalrm *alarm)
{
	struct tegra_rtc_info *info = FUNC0(dev);
	u32 sec;

	if (alarm->enabled)
		sec = FUNC3(&alarm->time);
	else
		sec = 0;

	FUNC5(dev);
	FUNC6(sec, info->base + TEGRA_RTC_REG_SECONDS_ALARM0);
	FUNC1(dev, "alarm read back as %d\n",
		 FUNC2(info->base + TEGRA_RTC_REG_SECONDS_ALARM0));

	/* if successfully written and alarm is enabled ... */
	if (sec) {
		FUNC4(dev, 1);
		FUNC1(dev, "alarm set as %u, %ptR\n", sec, &alarm->time);
	} else {
		/* disable alarm if 0 or write error */
		FUNC1(dev, "alarm disabled\n");
		FUNC4(dev, 0);
	}

	return 0;
}