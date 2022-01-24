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
typedef  unsigned long long u8 ;
typedef  scalar_t__ time64_t ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int /*<<< orphan*/  RTC_COUNT4 ; 
 int /*<<< orphan*/  RTC_CTRL ; 
 int /*<<< orphan*/  RTC_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 scalar_t__ FUNC1 (struct rtc_time*) ; 
 struct device* FUNC2 (struct device*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,int,unsigned long long*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *tm)
{
	struct device *tps_dev = FUNC2(dev);
	unsigned long long ticks;
	time64_t seconds;
	u8 buff[5];
	int ret;

	seconds = FUNC1(tm);

	ticks = (unsigned long long)seconds << 10;
	buff[0] = (ticks >> 32) & 0xff;
	buff[1] = (ticks >> 24) & 0xff;
	buff[2] = (ticks >> 16) & 0xff;
	buff[3] = (ticks >> 8) & 0xff;
	buff[4] = ticks & 0xff;

	/* Disable RTC before changing time */
	ret = FUNC3(tps_dev, RTC_CTRL, RTC_ENABLE);
	if (ret < 0) {
		FUNC0(dev, "failed to clear RTC_ENABLE\n");
		return ret;
	}

	ret = FUNC5(tps_dev, RTC_COUNT4, sizeof(buff), buff);
	if (ret < 0) {
		FUNC0(dev, "failed to program new time\n");
		return ret;
	}

	/* Enable RTC */
	ret = FUNC4(tps_dev, RTC_CTRL, RTC_ENABLE);
	if (ret < 0) {
		FUNC0(dev, "failed to set RTC_ENABLE\n");
		return ret;
	}
	return 0;
}