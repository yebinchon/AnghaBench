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
struct rtc_device {int /*<<< orphan*/  owner; int /*<<< orphan*/  range_max; int /*<<< orphan*/  range_min; int /*<<< orphan*/ * ops; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rtc_device*) ; 
 int FUNC1 (struct rtc_device*) ; 
 int /*<<< orphan*/  RTC_TIMESTAMP_BEGIN_2000 ; 
 int /*<<< orphan*/  RTC_TIMESTAMP_END_2099 ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct rtc_device* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct rtc_device*) ; 
 int /*<<< orphan*/  wilco_ec_rtc_ops ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct rtc_device *rtc;

	rtc = FUNC2(&pdev->dev);
	if (FUNC0(rtc))
		return FUNC1(rtc);

	rtc->ops = &wilco_ec_rtc_ops;
	/* EC only supports this century */
	rtc->range_min = RTC_TIMESTAMP_BEGIN_2000;
	rtc->range_max = RTC_TIMESTAMP_END_2099;
	rtc->owner = THIS_MODULE;

	return FUNC3(rtc);
}