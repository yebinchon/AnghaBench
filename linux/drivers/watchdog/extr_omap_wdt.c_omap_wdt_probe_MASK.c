#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  timeout; int /*<<< orphan*/  bootstatus; int /*<<< orphan*/ * parent; int /*<<< orphan*/  max_timeout; int /*<<< orphan*/  min_timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct omap_wdt_dev {int omap_wdt_users; int wdt_trgr_pattern; int /*<<< orphan*/ * dev; TYPE_1__ wdog; scalar_t__ base; int /*<<< orphan*/  lock; } ;
struct omap_wd_timer_platform_data {int (* read_reset_sources ) () ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int OMAP_MPU_WD_RST_SRC_ID_SHIFT ; 
 scalar_t__ OMAP_WATCHDOG_REV ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  TIMER_MARGIN_DEFAULT ; 
 int /*<<< orphan*/  TIMER_MARGIN_MAX ; 
 int /*<<< orphan*/  TIMER_MARGIN_MIN ; 
 int /*<<< orphan*/  WDIOF_CARDRESET ; 
 struct omap_wd_timer_platform_data* FUNC2 (int /*<<< orphan*/ *) ; 
 struct omap_wdt_dev* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ early_enable ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC6 (struct omap_wdt_dev*) ; 
 int /*<<< orphan*/  omap_wdt_info ; 
 int /*<<< orphan*/  omap_wdt_ops ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct omap_wdt_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (scalar_t__) ; 
 int FUNC15 () ; 
 int /*<<< orphan*/  timer_margin ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct omap_wd_timer_platform_data *pdata = FUNC2(&pdev->dev);
	struct omap_wdt_dev *wdev;
	int ret;

	wdev = FUNC3(&pdev->dev, sizeof(*wdev), GFP_KERNEL);
	if (!wdev)
		return -ENOMEM;

	wdev->omap_wdt_users	= false;
	wdev->dev		= &pdev->dev;
	wdev->wdt_trgr_pattern	= 0x1234;
	FUNC5(&wdev->lock);

	/* reserve static register mappings */
	wdev->base = FUNC4(pdev, 0);
	if (FUNC0(wdev->base))
		return FUNC1(wdev->base);

	wdev->wdog.info = &omap_wdt_info;
	wdev->wdog.ops = &omap_wdt_ops;
	wdev->wdog.min_timeout = TIMER_MARGIN_MIN;
	wdev->wdog.max_timeout = TIMER_MARGIN_MAX;
	wdev->wdog.timeout = TIMER_MARGIN_DEFAULT;
	wdev->wdog.parent = &pdev->dev;

	FUNC16(&wdev->wdog, timer_margin, &pdev->dev);

	FUNC18(&wdev->wdog, nowayout);

	FUNC8(pdev, wdev);

	FUNC10(wdev->dev);
	FUNC11(wdev->dev);

	if (pdata && pdata->read_reset_sources) {
		u32 rs = pdata->read_reset_sources();
		if (rs & (1 << OMAP_MPU_WD_RST_SRC_ID_SHIFT))
			wdev->wdog.bootstatus = WDIOF_CARDRESET;
	}

	if (!early_enable)
		FUNC6(wdev);

	ret = FUNC17(&wdev->wdog);
	if (ret) {
		FUNC9(wdev->dev);
		return ret;
	}

	FUNC13("OMAP Watchdog Timer Rev 0x%02x: initial timeout %d sec\n",
		FUNC14(wdev->base + OMAP_WATCHDOG_REV) & 0xFF,
		wdev->wdog.timeout);

	if (early_enable)
		FUNC7(&wdev->wdog);

	FUNC12(wdev->dev);

	return 0;
}