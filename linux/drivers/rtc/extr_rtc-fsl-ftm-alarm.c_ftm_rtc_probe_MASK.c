#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct resource {int dummy; } ;
struct TYPE_14__ {struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct ftm_rtc {int alarm_freq; TYPE_1__* rtc_dev; int /*<<< orphan*/  big_endian; TYPE_1__* base; } ;
struct device_node {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FIXED_FREQ_CLK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_NO_SUSPEND ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ MAX_FREQ_DIV ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 TYPE_1__* FUNC5 (TYPE_3__*,struct resource*) ; 
 struct ftm_rtc* FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ftm_rtc*) ; 
 TYPE_1__* FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  ftm_rtc_alarm_interrupt ; 
 int /*<<< orphan*/  ftm_rtc_ops ; 
 int FUNC9 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*,char*) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct ftm_rtc*) ; 
 int FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct resource *r;
	int irq;
	int ret;
	struct ftm_rtc *rtc;

	rtc = FUNC6(&pdev->dev, sizeof(*rtc), GFP_KERNEL);
	if (FUNC14(!rtc)) {
		FUNC2(&pdev->dev, "cannot alloc memory for rtc\n");
		return -ENOMEM;
	}

	FUNC12(pdev, rtc);

	rtc->rtc_dev = FUNC8(&pdev->dev);
	if (FUNC0(rtc->rtc_dev))
		return FUNC1(rtc->rtc_dev);

	r = FUNC11(pdev, IORESOURCE_MEM, 0);
	if (!r) {
		FUNC2(&pdev->dev, "cannot get resource for rtc\n");
		return -ENODEV;
	}

	rtc->base = FUNC5(&pdev->dev, r);
	if (FUNC0(rtc->base)) {
		FUNC2(&pdev->dev, "cannot ioremap resource for rtc\n");
		return FUNC1(rtc->base);
	}

	irq = FUNC9(np, 0);
	if (irq <= 0) {
		FUNC2(&pdev->dev, "unable to get IRQ from DT, %d\n", irq);
		return -EINVAL;
	}

	ret = FUNC7(&pdev->dev, irq, ftm_rtc_alarm_interrupt,
			       IRQF_NO_SUSPEND, FUNC3(&pdev->dev), rtc);
	if (ret < 0) {
		FUNC2(&pdev->dev, "failed to request irq\n");
		return ret;
	}

	rtc->big_endian = FUNC10(np, "big-endian");
	rtc->alarm_freq = (u32)FIXED_FREQ_CLK / (u32)MAX_FREQ_DIV;
	rtc->rtc_dev->ops = &ftm_rtc_ops;

	FUNC4(&pdev->dev, true);

	ret = FUNC13(rtc->rtc_dev);
	if (ret) {
		FUNC2(&pdev->dev, "can't register rtc device\n");
		return ret;
	}

	return 0;
}