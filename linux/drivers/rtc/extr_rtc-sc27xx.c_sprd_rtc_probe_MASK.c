#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct sprd_rtc {scalar_t__ irq; TYPE_1__* rtc; TYPE_3__* dev; int /*<<< orphan*/  base; int /*<<< orphan*/  regmap; } ;
struct TYPE_11__ {int /*<<< orphan*/  parent; struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; int /*<<< orphan*/  name; } ;
struct device_node {int dummy; } ;
struct TYPE_10__ {long long range_max; scalar_t__ range_min; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_EARLY_RESUME ; 
 int IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 struct sprd_rtc* FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct sprd_rtc*) ; 
 TYPE_1__* FUNC7 (TYPE_3__*) ; 
 int FUNC8 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct sprd_rtc*) ; 
 int FUNC11 (TYPE_1__*) ; 
 int FUNC12 (struct sprd_rtc*) ; 
 int FUNC13 (struct sprd_rtc*) ; 
 int /*<<< orphan*/  sprd_rtc_handler ; 
 int /*<<< orphan*/  sprd_rtc_ops ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device_node *node = pdev->dev.of_node;
	struct sprd_rtc *rtc;
	int ret;

	rtc = FUNC5(&pdev->dev, sizeof(*rtc), GFP_KERNEL);
	if (!rtc)
		return -ENOMEM;

	rtc->regmap = FUNC3(pdev->dev.parent, NULL);
	if (!rtc->regmap)
		return -ENODEV;

	ret = FUNC8(node, "reg", &rtc->base);
	if (ret) {
		FUNC2(&pdev->dev, "failed to get RTC base address\n");
		return ret;
	}

	rtc->irq = FUNC9(pdev, 0);
	if (rtc->irq < 0)
		return rtc->irq;

	rtc->rtc = FUNC7(&pdev->dev);
	if (FUNC0(rtc->rtc))
		return FUNC1(rtc->rtc);

	rtc->dev = &pdev->dev;
	FUNC10(pdev, rtc);

	/* check if we need set the alarm interrupt */
	ret = FUNC12(rtc);
	if (ret) {
		FUNC2(&pdev->dev, "failed to check RTC alarm interrupt\n");
		return ret;
	}

	/* check if RTC time values are valid */
	ret = FUNC13(rtc);
	if (ret) {
		FUNC2(&pdev->dev, "failed to check RTC time values\n");
		return ret;
	}

	ret = FUNC6(&pdev->dev, rtc->irq, NULL,
					sprd_rtc_handler,
					IRQF_ONESHOT | IRQF_EARLY_RESUME,
					pdev->name, rtc);
	if (ret < 0) {
		FUNC2(&pdev->dev, "failed to request RTC irq\n");
		return ret;
	}

	FUNC4(&pdev->dev, 1);

	rtc->rtc->ops = &sprd_rtc_ops;
	rtc->rtc->range_min = 0;
	rtc->rtc->range_max = 5662310399LL;
	ret = FUNC11(rtc->rtc);
	if (ret) {
		FUNC4(&pdev->dev, 0);
		return ret;
	}

	return 0;
}