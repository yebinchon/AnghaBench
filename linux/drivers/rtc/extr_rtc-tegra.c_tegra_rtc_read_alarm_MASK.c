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
struct rtc_wkalrm {int enabled; int pending; int /*<<< orphan*/  time; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ TEGRA_RTC_INTR_STATUS_SEC_ALARM0 ; 
 scalar_t__ TEGRA_RTC_REG_INTR_STATUS ; 
 scalar_t__ TEGRA_RTC_REG_SECONDS_ALARM0 ; 
 struct tegra_rtc_info* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_wkalrm *alarm)
{
	struct tegra_rtc_info *info = FUNC0(dev);
	u32 sec, value;

	sec = FUNC1(info->base + TEGRA_RTC_REG_SECONDS_ALARM0);

	if (sec == 0) {
		/* alarm is disabled */
		alarm->enabled = 0;
	} else {
		/* alarm is enabled */
		alarm->enabled = 1;
		FUNC2(sec, &alarm->time);
	}

	value = FUNC1(info->base + TEGRA_RTC_REG_INTR_STATUS);
	alarm->pending = (value & TEGRA_RTC_INTR_STATUS_SEC_ALARM0) != 0;

	return 0;
}