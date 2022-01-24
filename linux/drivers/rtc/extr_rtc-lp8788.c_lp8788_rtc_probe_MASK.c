#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct lp8788_rtc {int /*<<< orphan*/  rdev; int /*<<< orphan*/  alarm; struct lp8788* lp; } ;
struct lp8788 {int /*<<< orphan*/  dev; TYPE_1__* pdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  alarm_sel; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_ALARM_SEL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct lp8788* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int) ; 
 struct lp8788_rtc* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct platform_device*,struct lp8788_rtc*) ; 
 int /*<<< orphan*/  lp8788_rtc_ops ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct lp8788_rtc*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct lp8788 *lp = FUNC3(pdev->dev.parent);
	struct lp8788_rtc *rtc;
	struct device *dev = &pdev->dev;

	rtc = FUNC6(dev, sizeof(struct lp8788_rtc), GFP_KERNEL);
	if (!rtc)
		return -ENOMEM;

	rtc->lp = lp;
	rtc->alarm = lp->pdata ? lp->pdata->alarm_sel : DEFAULT_ALARM_SEL;
	FUNC9(pdev, rtc);

	FUNC5(dev, 1);

	rtc->rdev = FUNC7(dev, "lp8788_rtc",
					&lp8788_rtc_ops, THIS_MODULE);
	if (FUNC0(rtc->rdev)) {
		FUNC2(dev, "can not register rtc device\n");
		return FUNC1(rtc->rdev);
	}

	if (FUNC8(pdev, rtc))
		FUNC4(lp->dev, "no rtc irq handler\n");

	return 0;
}