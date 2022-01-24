#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct resource {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
struct TYPE_4__ {int pretimeout; int min_timeout; int max_timeout; int /*<<< orphan*/  timeout; int /*<<< orphan*/  bootstatus; struct device* parent; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct qcom_wdt {int rate; TYPE_1__ wdd; scalar_t__ const* layout; struct clk* base; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  WDIOF_CARDRESET ; 
 int /*<<< orphan*/  WDT_STS ; 
 int FUNC2 (struct clk*) ; 
 int FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,struct clk*) ; 
 struct clk* FUNC6 (struct device*,int /*<<< orphan*/ *) ; 
 struct clk* FUNC7 (struct device*,struct resource*) ; 
 struct qcom_wdt* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int FUNC10 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int,unsigned int) ; 
 scalar_t__* FUNC12 (struct device*) ; 
 scalar_t__ FUNC13 (struct device_node*,char*,scalar_t__*) ; 
 int FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct qcom_wdt*) ; 
 int /*<<< orphan*/  qcom_clk_disable_unprepare ; 
 int /*<<< orphan*/  qcom_wdt_info ; 
 int /*<<< orphan*/  qcom_wdt_isr ; 
 int /*<<< orphan*/  qcom_wdt_ops ; 
 int /*<<< orphan*/  qcom_wdt_pt_info ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC19 (struct qcom_wdt*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct qcom_wdt *wdt;
	struct resource *res;
	struct device_node *np = dev->of_node;
	const u32 *regs;
	u32 percpu_offset;
	int irq, ret;
	struct clk *clk;

	regs = FUNC12(dev);
	if (!regs) {
		FUNC4(dev, "Unsupported QCOM WDT module\n");
		return -ENODEV;
	}

	wdt = FUNC8(dev, sizeof(*wdt), GFP_KERNEL);
	if (!wdt)
		return -ENOMEM;

	res = FUNC15(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENOMEM;

	/* We use CPU0's DGT for the watchdog */
	if (FUNC13(np, "cpu-offset", &percpu_offset))
		percpu_offset = 0;

	res->start += percpu_offset;
	res->end += percpu_offset;

	wdt->base = FUNC7(dev, res);
	if (FUNC0(wdt->base))
		return FUNC1(wdt->base);

	clk = FUNC6(dev, NULL);
	if (FUNC0(clk)) {
		FUNC4(dev, "failed to get input clock\n");
		return FUNC1(clk);
	}

	ret = FUNC3(clk);
	if (ret) {
		FUNC4(dev, "failed to setup clock\n");
		return ret;
	}
	ret = FUNC5(dev, qcom_clk_disable_unprepare, clk);
	if (ret)
		return ret;

	/*
	 * We use the clock rate to calculate the max timeout, so ensure it's
	 * not zero to avoid a divide-by-zero exception.
	 *
	 * WATCHDOG_CORE assumes units of seconds, if the WDT is clocked such
	 * that it would bite before a second elapses it's usefulness is
	 * limited.  Bail if this is the case.
	 */
	wdt->rate = FUNC2(clk);
	if (wdt->rate == 0 ||
	    wdt->rate > 0x10000000U) {
		FUNC4(dev, "invalid clock rate\n");
		return -EINVAL;
	}

	/* check if there is pretimeout support */
	irq = FUNC14(pdev, 0);
	if (irq > 0) {
		ret = FUNC9(dev, irq, qcom_wdt_isr,
				       IRQF_TRIGGER_RISING,
				       "wdt_bark", &wdt->wdd);
		if (ret)
			return ret;

		wdt->wdd.info = &qcom_wdt_pt_info;
		wdt->wdd.pretimeout = 1;
	} else {
		if (irq == -EPROBE_DEFER)
			return -EPROBE_DEFER;

		wdt->wdd.info = &qcom_wdt_info;
	}

	wdt->wdd.ops = &qcom_wdt_ops;
	wdt->wdd.min_timeout = 1;
	wdt->wdd.max_timeout = 0x10000000U / wdt->rate;
	wdt->wdd.parent = dev;
	wdt->layout = regs;

	if (FUNC17(FUNC19(wdt, WDT_STS)) & 1)
		wdt->wdd.bootstatus = WDIOF_CARDRESET;

	/*
	 * If 'timeout-sec' unspecified in devicetree, assume a 30 second
	 * default, unless the max timeout is less than 30 seconds, then use
	 * the max instead.
	 */
	wdt->wdd.timeout = FUNC11(wdt->wdd.max_timeout, 30U);
	FUNC18(&wdt->wdd, 0, dev);

	ret = FUNC10(dev, &wdt->wdd);
	if (ret)
		return ret;

	FUNC16(pdev, wdt);
	return 0;
}