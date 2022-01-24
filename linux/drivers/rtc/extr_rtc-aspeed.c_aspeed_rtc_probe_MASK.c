#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct aspeed_rtc {TYPE_1__* rtc_dev; TYPE_1__* base; } ;
struct TYPE_6__ {long long range_max; int /*<<< orphan*/  range_min; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  RTC_TIMESTAMP_BEGIN_1900 ; 
 int /*<<< orphan*/  aspeed_rtc_ops ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,struct resource*) ; 
 struct aspeed_rtc* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct aspeed_rtc*) ; 
 int FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct aspeed_rtc *rtc;
	struct resource *res;

	rtc = FUNC3(&pdev->dev, sizeof(*rtc), GFP_KERNEL);
	if (!rtc)
		return -ENOMEM;

	res = FUNC5(pdev, IORESOURCE_MEM, 0);
	rtc->base = FUNC2(&pdev->dev, res);
	if (FUNC0(rtc->base))
		return FUNC1(rtc->base);

	rtc->rtc_dev = FUNC4(&pdev->dev);
	if (FUNC0(rtc->rtc_dev))
		return FUNC1(rtc->rtc_dev);

	FUNC6(pdev, rtc);

	rtc->rtc_dev->ops = &aspeed_rtc_ops;
	rtc->rtc_dev->range_min = RTC_TIMESTAMP_BEGIN_1900;
	rtc->rtc_dev->range_max = 38814989399LL; /* 3199-12-31 23:59:59 */

	return FUNC7(rtc->rtc_dev);
}