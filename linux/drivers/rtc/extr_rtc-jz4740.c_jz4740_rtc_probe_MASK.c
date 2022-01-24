#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct platform_device_id {int driver_data; } ;
struct TYPE_19__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  name; } ;
struct of_device_id {scalar_t__ data; } ;
struct jz4740_rtc {int type; scalar_t__ irq; int reset_pin_assert_time; int min_wakeup_pin_assert_time; TYPE_1__* rtc; int /*<<< orphan*/  lock; TYPE_1__* clk; TYPE_1__* base; } ;
struct device_node {int dummy; } ;
typedef  enum jz4740_rtc_type { ____Placeholder_jz4740_rtc_type } jz4740_rtc_type ;
struct TYPE_18__ {int /*<<< orphan*/  range_max; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  U32_MAX ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,...) ; 
 TYPE_2__* dev_for_power_off ; 
 int FUNC3 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 TYPE_1__* FUNC6 (TYPE_2__*,char*) ; 
 TYPE_1__* FUNC7 (TYPE_2__*,struct resource*) ; 
 struct jz4740_rtc* FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct jz4740_rtc*) ; 
 TYPE_1__* FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  jz4740_rtc_irq ; 
 int /*<<< orphan*/  jz4740_rtc_of_match ; 
 int /*<<< orphan*/  jz4740_rtc_ops ; 
 scalar_t__ jz4740_rtc_power_off ; 
 scalar_t__ FUNC11 (struct device_node*) ; 
 struct of_device_id* FUNC12 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (struct device_node*,char*,int*) ; 
 struct platform_device_id* FUNC14 (struct platform_device*) ; 
 scalar_t__ FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct jz4740_rtc*) ; 
 scalar_t__ pm_power_off ; 
 int FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	int ret;
	struct jz4740_rtc *rtc;
	struct resource *mem;
	const struct platform_device_id *id = FUNC14(pdev);
	const struct of_device_id *of_id = FUNC12(
			jz4740_rtc_of_match, &pdev->dev);
	struct device_node *np = pdev->dev.of_node;

	rtc = FUNC8(&pdev->dev, sizeof(*rtc), GFP_KERNEL);
	if (!rtc)
		return -ENOMEM;

	if (of_id)
		rtc->type = (enum jz4740_rtc_type)of_id->data;
	else
		rtc->type = id->driver_data;

	rtc->irq = FUNC15(pdev, 0);
	if (rtc->irq < 0)
		return -ENOENT;

	mem = FUNC16(pdev, IORESOURCE_MEM, 0);
	rtc->base = FUNC7(&pdev->dev, mem);
	if (FUNC0(rtc->base))
		return FUNC1(rtc->base);

	rtc->clk = FUNC6(&pdev->dev, "rtc");
	if (FUNC0(rtc->clk)) {
		FUNC2(&pdev->dev, "Failed to get RTC clock\n");
		return FUNC1(rtc->clk);
	}

	FUNC19(&rtc->lock);

	FUNC17(pdev, rtc);

	FUNC5(&pdev->dev, 1);

	ret = FUNC3(&pdev->dev, rtc->irq);
	if (ret) {
		FUNC2(&pdev->dev, "Failed to set wake irq: %d\n", ret);
		return ret;
	}

	rtc->rtc = FUNC10(&pdev->dev);
	if (FUNC0(rtc->rtc)) {
		ret = FUNC1(rtc->rtc);
		FUNC2(&pdev->dev, "Failed to allocate rtc device: %d\n", ret);
		return ret;
	}

	rtc->rtc->ops = &jz4740_rtc_ops;
	rtc->rtc->range_max = U32_MAX;

	ret = FUNC18(rtc->rtc);
	if (ret)
		return ret;

	ret = FUNC9(&pdev->dev, rtc->irq, jz4740_rtc_irq, 0,
				pdev->name, rtc);
	if (ret) {
		FUNC2(&pdev->dev, "Failed to request rtc irq: %d\n", ret);
		return ret;
	}

	if (np && FUNC11(np)) {
		if (!pm_power_off) {
			/* Default: 60ms */
			rtc->reset_pin_assert_time = 60;
			FUNC13(np, "reset-pin-assert-time-ms",
					     &rtc->reset_pin_assert_time);

			/* Default: 100ms */
			rtc->min_wakeup_pin_assert_time = 100;
			FUNC13(np,
					     "min-wakeup-pin-assert-time-ms",
					     &rtc->min_wakeup_pin_assert_time);

			dev_for_power_off = &pdev->dev;
			pm_power_off = jz4740_rtc_power_off;
		} else {
			FUNC4(&pdev->dev,
				 "Poweroff handler already present!\n");
		}
	}

	return 0;
}