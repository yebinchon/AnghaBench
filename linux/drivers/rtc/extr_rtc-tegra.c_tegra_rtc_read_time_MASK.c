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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_rtc_info {int /*<<< orphan*/  lock; scalar_t__ base; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ TEGRA_RTC_REG_MILLI_SECONDS ; 
 scalar_t__ TEGRA_RTC_REG_SHADOW_SECONDS ; 
 struct tegra_rtc_info* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *tm)
{
	struct tegra_rtc_info *info = FUNC0(dev);
	unsigned long flags;
	u32 sec, msec;

	/*
	 * RTC hardware copies seconds to shadow seconds when a read of
	 * milliseconds occurs. use a lock to keep other threads out.
	 */
	FUNC4(&info->lock, flags);

	msec = FUNC2(info->base + TEGRA_RTC_REG_MILLI_SECONDS);
	sec = FUNC2(info->base + TEGRA_RTC_REG_SHADOW_SECONDS);

	FUNC5(&info->lock, flags);

	FUNC3(sec, tm);

	FUNC1(dev, "time read as %u, %ptR\n", sec, tm);

	return 0;
}