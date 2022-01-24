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
typedef  int u32 ;
struct watchdog_device {int min_timeout; int max_timeout; int timeout; int bootstatus; int /*<<< orphan*/  status; struct device* parent; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct ltq_wdt_priv {int clk_rate; struct watchdog_device wdt; int /*<<< orphan*/  membase; } ;
struct ltq_wdt_hw {int (* bootstatus_get ) (struct device*) ;} ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int LTQ_WDT_CR_MAX_TIMEOUT ; 
 int LTQ_WDT_DIVIDER ; 
 int /*<<< orphan*/  LTQ_WDT_SR ; 
 int LTQ_WDT_SR_EN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WDOG_HW_RUNNING ; 
 struct clk* FUNC2 () ; 
 int FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 struct ltq_wdt_priv* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,struct watchdog_device*) ; 
 int /*<<< orphan*/  ltq_wdt_info ; 
 int /*<<< orphan*/  ltq_wdt_ops ; 
 int FUNC8 (struct ltq_wdt_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct watchdog_device*) ; 
 int /*<<< orphan*/  nowayout ; 
 struct ltq_wdt_hw* FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct watchdog_device*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct watchdog_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct ltq_wdt_priv *priv;
	struct watchdog_device *wdt;
	struct clk *clk;
	const struct ltq_wdt_hw *ltq_wdt_hw;
	int ret;
	u32 status;

	priv = FUNC5(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->membase = FUNC6(pdev, 0);
	if (FUNC0(priv->membase))
		return FUNC1(priv->membase);

	/* we do not need to enable the clock as it is always running */
	clk = FUNC2();
	priv->clk_rate = FUNC3(clk) / LTQ_WDT_DIVIDER;
	if (!priv->clk_rate) {
		FUNC4(dev, "clock rate less than divider %i\n",
			LTQ_WDT_DIVIDER);
		return -EINVAL;
	}

	wdt = &priv->wdt;
	wdt->info		= &ltq_wdt_info;
	wdt->ops		= &ltq_wdt_ops;
	wdt->min_timeout	= 1;
	wdt->max_timeout	= LTQ_WDT_CR_MAX_TIMEOUT / priv->clk_rate;
	wdt->timeout		= wdt->max_timeout;
	wdt->parent		= dev;

	ltq_wdt_hw = FUNC10(dev);
	if (ltq_wdt_hw && ltq_wdt_hw->bootstatus_get) {
		ret = ltq_wdt_hw->bootstatus_get(dev);
		if (ret >= 0)
			wdt->bootstatus = ret;
	}

	FUNC14(wdt, nowayout);
	FUNC13(wdt, 0, dev);

	status = FUNC8(priv, LTQ_WDT_SR);
	if (status & LTQ_WDT_SR_EN) {
		/*
		 * If the watchdog is already running overwrite it with our
		 * new settings. Stop is not needed as the start call will
		 * replace all settings anyway.
		 */
		FUNC9(wdt);
		FUNC11(WDOG_HW_RUNNING, &wdt->status);
	}

	return FUNC7(dev, wdt);
}