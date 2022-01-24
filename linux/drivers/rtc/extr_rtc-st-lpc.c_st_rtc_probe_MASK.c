#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct st_rtc {TYPE_1__* clk; TYPE_1__* rtc_dev; int /*<<< orphan*/  clkrate; int /*<<< orphan*/  irq; TYPE_1__* ioaddr; int /*<<< orphan*/  lock; } ;
struct resource {int dummy; } ;
struct TYPE_18__ {struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; int /*<<< orphan*/  name; } ;
struct device_node {int dummy; } ;
struct TYPE_17__ {int /*<<< orphan*/  range_max; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ ST_LPC_MODE_RTC ; 
 int /*<<< orphan*/  U64_MAX ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 TYPE_1__* FUNC8 (TYPE_3__*,struct resource*) ; 
 struct st_rtc* FUNC9 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct st_rtc*) ; 
 TYPE_1__* FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct device_node*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct device_node*,char*,scalar_t__*) ; 
 struct resource* FUNC17 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct st_rtc*) ; 
 int FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  st_rtc_handler ; 
 int /*<<< orphan*/  st_rtc_ops ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct st_rtc *rtc;
	struct resource *res;
	uint32_t mode;
	int ret = 0;

	ret = FUNC16(np, "st,lpc-mode", &mode);
	if (ret) {
		FUNC6(&pdev->dev, "An LPC mode must be provided\n");
		return -EINVAL;
	}

	/* LPC can either run as a Clocksource or in RTC or WDT mode */
	if (mode != ST_LPC_MODE_RTC)
		return -ENODEV;

	rtc = FUNC9(&pdev->dev, sizeof(struct st_rtc), GFP_KERNEL);
	if (!rtc)
		return -ENOMEM;

	rtc->rtc_dev = FUNC11(&pdev->dev);
	if (FUNC0(rtc->rtc_dev))
		return FUNC1(rtc->rtc_dev);

	FUNC20(&rtc->lock);

	res = FUNC17(pdev, IORESOURCE_MEM, 0);
	rtc->ioaddr = FUNC8(&pdev->dev, res);
	if (FUNC0(rtc->ioaddr))
		return FUNC1(rtc->ioaddr);

	rtc->irq = FUNC15(np, 0);
	if (!rtc->irq) {
		FUNC6(&pdev->dev, "IRQ missing or invalid\n");
		return -EINVAL;
	}

	ret = FUNC10(&pdev->dev, rtc->irq, st_rtc_handler, 0,
			       pdev->name, rtc);
	if (ret) {
		FUNC6(&pdev->dev, "Failed to request irq %i\n", rtc->irq);
		return ret;
	}

	FUNC14(rtc->irq);
	FUNC12(rtc->irq);

	rtc->clk = FUNC3(&pdev->dev, NULL);
	if (FUNC0(rtc->clk)) {
		FUNC6(&pdev->dev, "Unable to request clock\n");
		return FUNC1(rtc->clk);
	}

	FUNC5(rtc->clk);

	rtc->clkrate = FUNC4(rtc->clk);
	if (!rtc->clkrate) {
		FUNC6(&pdev->dev, "Unable to fetch clock rate\n");
		return -EINVAL;
	}

	FUNC7(&pdev->dev, 1);

	FUNC18(pdev, rtc);

	rtc->rtc_dev->ops = &st_rtc_ops;
	rtc->rtc_dev->range_max = U64_MAX;
	FUNC13(rtc->rtc_dev->range_max, rtc->clkrate);

	ret = FUNC19(rtc->rtc_dev);
	if (ret) {
		FUNC2(rtc->clk);
		return ret;
	}

	return 0;
}