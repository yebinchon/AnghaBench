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
struct tegra_rtc_info {scalar_t__ base; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ TEGRA_RTC_REG_SECONDS ; 
 struct tegra_rtc_info* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct rtc_time*) ; 
 int FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *tm)
{
	struct tegra_rtc_info *info = FUNC0(dev);
	u32 sec;
	int ret;

	/* convert tm to seconds */
	sec = FUNC3(tm);

	FUNC1(dev, "time set to %u, %ptR\n", sec, tm);

	/* seconds only written if wait succeeded */
	ret = FUNC4(dev);
	if (!ret)
		FUNC5(sec, info->base + TEGRA_RTC_REG_SECONDS);

	FUNC1(dev, "time read back as %d\n",
		 FUNC2(info->base + TEGRA_RTC_REG_SECONDS));

	return ret;
}