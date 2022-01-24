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
struct rtc_device {int /*<<< orphan*/  range_max; int /*<<< orphan*/ * ops; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rtc_device*) ; 
 int FUNC1 (struct rtc_device*) ; 
 int /*<<< orphan*/  U32_MAX ; 
 struct rtc_device* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dm355evm_rtc_ops ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,struct rtc_device*) ; 
 int FUNC4 (struct rtc_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct rtc_device *rtc;

	rtc = FUNC2(&pdev->dev);
	if (FUNC0(rtc))
		return FUNC1(rtc);

	FUNC3(pdev, rtc);

	rtc->ops = &dm355evm_rtc_ops;
	rtc->range_max = U32_MAX;

	return FUNC4(rtc);
}