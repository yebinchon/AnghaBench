#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_12__ {int /*<<< orphan*/  notifier_call; } ;
struct brcmstb_waketmr {scalar_t__ irq; TYPE_2__* clk; TYPE_1__ reboot_notifier; TYPE_2__* rtc; void* rate; TYPE_2__* base; struct device* dev; } ;
struct TYPE_13__ {int /*<<< orphan*/  range_max; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 void* BRCMSTB_WKTMR_DEFAULT_FREQ ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  U32_MAX ; 
 int /*<<< orphan*/  brcmstb_waketmr_irq ; 
 int /*<<< orphan*/  brcmstb_waketmr_ops ; 
 int /*<<< orphan*/  brcmstb_waketmr_reboot ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 void* FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 TYPE_2__* FUNC8 (struct device*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (struct device*,struct resource*) ; 
 struct brcmstb_waketmr* FUNC10 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct brcmstb_waketmr*) ; 
 TYPE_2__* FUNC12 (struct device*) ; 
 scalar_t__ FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct brcmstb_waketmr*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct brcmstb_waketmr *timer;
	struct resource *res;
	int ret;

	timer = FUNC10(dev, sizeof(*timer), GFP_KERNEL);
	if (!timer)
		return -ENOMEM;

	FUNC15(pdev, timer);
	timer->dev = dev;

	res = FUNC14(pdev, IORESOURCE_MEM, 0);
	timer->base = FUNC9(dev, res);
	if (FUNC0(timer->base))
		return FUNC1(timer->base);

	timer->rtc = FUNC12(dev);
	if (FUNC0(timer->rtc))
		return FUNC1(timer->rtc);

	/*
	 * Set wakeup capability before requesting wakeup interrupt, so we can
	 * process boot-time "wakeups" (e.g., from S5 soft-off)
	 */
	FUNC6(dev, true);
	FUNC7(dev);

	timer->irq = FUNC13(pdev, 0);
	if (timer->irq < 0)
		return -ENODEV;

	timer->clk = FUNC8(dev, NULL);
	if (!FUNC0(timer->clk)) {
		ret = FUNC4(timer->clk);
		if (ret)
			return ret;
		timer->rate = FUNC3(timer->clk);
		if (!timer->rate)
			timer->rate = BRCMSTB_WKTMR_DEFAULT_FREQ;
	} else {
		timer->rate = BRCMSTB_WKTMR_DEFAULT_FREQ;
		timer->clk = NULL;
	}

	ret = FUNC11(dev, timer->irq, brcmstb_waketmr_irq, 0,
			       "brcmstb-waketimer", timer);
	if (ret < 0)
		goto err_clk;

	timer->reboot_notifier.notifier_call = brcmstb_waketmr_reboot;
	FUNC16(&timer->reboot_notifier);

	timer->rtc->ops = &brcmstb_waketmr_ops;
	timer->rtc->range_max = U32_MAX;

	ret = FUNC17(timer->rtc);
	if (ret)
		goto err_notifier;

	FUNC5(dev, "registered, with irq %d\n", timer->irq);

	return 0;

err_notifier:
	FUNC18(&timer->reboot_notifier);

err_clk:
	if (timer->clk)
		FUNC2(timer->clk);

	return ret;
}