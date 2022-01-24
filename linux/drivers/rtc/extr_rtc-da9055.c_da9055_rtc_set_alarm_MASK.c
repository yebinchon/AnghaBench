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
struct rtc_wkalrm {struct rtc_time time; } ;
struct device {int dummy; } ;
struct da9055_rtc {int /*<<< orphan*/  da9055; } ;

/* Variables and functions */
 int FUNC0 (struct da9055_rtc*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct rtc_time*) ; 
 struct da9055_rtc* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_wkalrm *alrm)
{
	int ret;
	struct rtc_time *tm = &alrm->time;
	struct da9055_rtc *rtc = FUNC2(dev);

	ret = FUNC0(rtc, 0);
	if (ret < 0)
		return ret;

	ret = FUNC1(rtc->da9055, tm);
	if (ret)
		return ret;

	ret = FUNC0(rtc, 1);

	return ret;
}