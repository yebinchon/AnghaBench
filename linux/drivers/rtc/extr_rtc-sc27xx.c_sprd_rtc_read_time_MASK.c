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
typedef  int /*<<< orphan*/  time64_t ;
struct sprd_rtc {int /*<<< orphan*/  valid; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SPRD_RTC_TIME ; 
 struct sprd_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct rtc_time*) ; 
 int FUNC3 (struct sprd_rtc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *tm)
{
	struct sprd_rtc *rtc = FUNC0(dev);
	time64_t secs;
	int ret;

	if (!rtc->valid) {
		FUNC1(dev, "RTC values are invalid\n");
		return -EINVAL;
	}

	ret = FUNC3(rtc, SPRD_RTC_TIME, &secs);
	if (ret)
		return ret;

	FUNC2(secs, tm);
	return 0;
}