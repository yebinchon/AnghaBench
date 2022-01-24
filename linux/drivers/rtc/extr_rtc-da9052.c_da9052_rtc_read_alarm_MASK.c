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
struct rtc_time {int dummy; } ;
struct rtc_wkalrm {int /*<<< orphan*/  enabled; struct rtc_time time; } ;
struct device {int dummy; } ;
struct da9052_rtc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct da9052_rtc*,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC1 (struct da9052_rtc*) ; 
 struct da9052_rtc* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct da9052_rtc*,char*,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_wkalrm *alrm)
{
	int ret;
	struct rtc_time *tm = &alrm->time;
	struct da9052_rtc *rtc = FUNC2(dev);

	ret = FUNC0(rtc, tm);
	if (ret < 0) {
		FUNC3(rtc, "failed to read RTC alarm: %d\n", ret);
		return ret;
	}

	alrm->enabled = FUNC1(rtc);
	return 0;
}