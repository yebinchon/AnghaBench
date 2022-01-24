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
struct tegra_rtc_info {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct tegra_rtc_info* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct tegra_rtc_info*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct tegra_rtc_info *info = FUNC1(dev);
	int retries = 500; /* ~490 us is the worst case, ~250 us is best */

	/*
	 * First wait for the RTC to become busy. This is when it posts its
	 * updated seconds+msec registers to AHB side.
	 */
	while (FUNC2(info)) {
		if (!retries--)
			goto retry_failed;

		FUNC3(1);
	}

	/* now we have about 250 us to manipulate registers */
	return 0;

retry_failed:
	FUNC0(dev, "write failed: retry count exceeded\n");
	return -ETIMEDOUT;
}