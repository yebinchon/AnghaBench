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
struct pl031_local {scalar_t__ base; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ RTC_LR ; 
 scalar_t__ RTC_YLR ; 
 struct pl031_local* FUNC0 (struct device*) ; 
 int FUNC1 (struct device*,struct rtc_time*,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_time *tm)
{
	unsigned long time;
	unsigned long bcd_year;
	struct pl031_local *ldata = FUNC0(dev);
	int ret;

	ret = FUNC1(dev, tm, &time, &bcd_year);
	if (ret == 0) {
		FUNC2(bcd_year, ldata->base + RTC_YLR);
		FUNC2(time, ldata->base + RTC_LR);
	}

	return ret;
}