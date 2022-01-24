#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_7__ {int max_timeout; struct device* parent; int /*<<< orphan*/  timeout; int /*<<< orphan*/  min_timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct lpc18xx_wdt_dev {int clk_rate; TYPE_1__ wdt_dev; int /*<<< orphan*/  timer; int /*<<< orphan*/  lock; void* wdt_clk; void* reg_clk; void* base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (void*) ; 
 int LPC18XX_WDT_CLK_DIV ; 
 int /*<<< orphan*/  LPC18XX_WDT_DEF_TIMEOUT ; 
 int LPC18XX_WDT_TC_MAX ; 
 int LPC18XX_WDT_TC_MIN ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpc18xx_wdt_dev*) ; 
 int FUNC4 (void*) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int FUNC7 (struct device*,int /*<<< orphan*/ ,void*) ; 
 void* FUNC8 (struct device*,char*) ; 
 struct lpc18xx_wdt_dev* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  heartbeat ; 
 int /*<<< orphan*/  lpc18xx_clk_disable_unprepare ; 
 int /*<<< orphan*/  lpc18xx_wdt_info ; 
 int /*<<< orphan*/  lpc18xx_wdt_ops ; 
 int /*<<< orphan*/  lpc18xx_wdt_timer_feed ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct lpc18xx_wdt_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,struct lpc18xx_wdt_dev*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct lpc18xx_wdt_dev *lpc18xx_wdt;
	struct device *dev = &pdev->dev;
	int ret;

	lpc18xx_wdt = FUNC9(dev, sizeof(*lpc18xx_wdt), GFP_KERNEL);
	if (!lpc18xx_wdt)
		return -ENOMEM;

	lpc18xx_wdt->base = FUNC10(pdev, 0);
	if (FUNC1(lpc18xx_wdt->base))
		return FUNC2(lpc18xx_wdt->base);

	lpc18xx_wdt->reg_clk = FUNC8(dev, "reg");
	if (FUNC1(lpc18xx_wdt->reg_clk)) {
		FUNC6(dev, "failed to get the reg clock\n");
		return FUNC2(lpc18xx_wdt->reg_clk);
	}

	lpc18xx_wdt->wdt_clk = FUNC8(dev, "wdtclk");
	if (FUNC1(lpc18xx_wdt->wdt_clk)) {
		FUNC6(dev, "failed to get the wdt clock\n");
		return FUNC2(lpc18xx_wdt->wdt_clk);
	}

	ret = FUNC5(lpc18xx_wdt->reg_clk);
	if (ret) {
		FUNC6(dev, "could not prepare or enable sys clock\n");
		return ret;
	}
	ret = FUNC7(dev, lpc18xx_clk_disable_unprepare,
				       lpc18xx_wdt->reg_clk);
	if (ret)
		return ret;

	ret = FUNC5(lpc18xx_wdt->wdt_clk);
	if (ret) {
		FUNC6(dev, "could not prepare or enable wdt clock\n");
		return ret;
	}
	ret = FUNC7(dev, lpc18xx_clk_disable_unprepare,
				       lpc18xx_wdt->wdt_clk);
	if (ret)
		return ret;

	/* We use the clock rate to calculate timeouts */
	lpc18xx_wdt->clk_rate = FUNC4(lpc18xx_wdt->wdt_clk);
	if (lpc18xx_wdt->clk_rate == 0) {
		FUNC6(dev, "failed to get clock rate\n");
		return -EINVAL;
	}

	lpc18xx_wdt->wdt_dev.info = &lpc18xx_wdt_info;
	lpc18xx_wdt->wdt_dev.ops = &lpc18xx_wdt_ops;

	lpc18xx_wdt->wdt_dev.min_timeout = FUNC0(LPC18XX_WDT_TC_MIN *
				LPC18XX_WDT_CLK_DIV, lpc18xx_wdt->clk_rate);

	lpc18xx_wdt->wdt_dev.max_timeout = (LPC18XX_WDT_TC_MAX *
				LPC18XX_WDT_CLK_DIV) / lpc18xx_wdt->clk_rate;

	lpc18xx_wdt->wdt_dev.timeout = FUNC12(lpc18xx_wdt->wdt_dev.max_timeout,
					   LPC18XX_WDT_DEF_TIMEOUT);

	FUNC14(&lpc18xx_wdt->lock);

	lpc18xx_wdt->wdt_dev.parent = dev;
	FUNC17(&lpc18xx_wdt->wdt_dev, lpc18xx_wdt);

	FUNC16(&lpc18xx_wdt->wdt_dev, heartbeat, dev);

	FUNC3(lpc18xx_wdt);

	FUNC15(&lpc18xx_wdt->timer, lpc18xx_wdt_timer_feed, 0);

	FUNC18(&lpc18xx_wdt->wdt_dev, nowayout);
	FUNC19(&lpc18xx_wdt->wdt_dev, 128);

	FUNC13(pdev, lpc18xx_wdt);

	FUNC20(&lpc18xx_wdt->wdt_dev);
	return FUNC11(dev, &lpc18xx_wdt->wdt_dev);
}