#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_8__ {void* timeout; struct device* parent; int /*<<< orphan*/  min_timeout; void* max_timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct mtk_wdt_dev {TYPE_1__ wdt_dev; int /*<<< orphan*/  wdt_base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* WDT_MAX_TIMEOUT ; 
 int /*<<< orphan*/  WDT_MIN_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,void*,int /*<<< orphan*/ ) ; 
 struct mtk_wdt_dev* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  mtk_wdt_info ; 
 int /*<<< orphan*/  mtk_wdt_ops ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct mtk_wdt_dev*) ; 
 int /*<<< orphan*/  timeout ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,struct mtk_wdt_dev*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct mtk_wdt_dev *mtk_wdt;
	int err;

	mtk_wdt = FUNC3(dev, sizeof(*mtk_wdt), GFP_KERNEL);
	if (!mtk_wdt)
		return -ENOMEM;

	FUNC7(pdev, mtk_wdt);

	mtk_wdt->wdt_base = FUNC4(pdev, 0);
	if (FUNC0(mtk_wdt->wdt_base))
		return FUNC1(mtk_wdt->wdt_base);

	mtk_wdt->wdt_dev.info = &mtk_wdt_info;
	mtk_wdt->wdt_dev.ops = &mtk_wdt_ops;
	mtk_wdt->wdt_dev.timeout = WDT_MAX_TIMEOUT;
	mtk_wdt->wdt_dev.max_timeout = WDT_MAX_TIMEOUT;
	mtk_wdt->wdt_dev.min_timeout = WDT_MIN_TIMEOUT;
	mtk_wdt->wdt_dev.parent = dev;

	FUNC9(&mtk_wdt->wdt_dev, timeout, dev);
	FUNC11(&mtk_wdt->wdt_dev, nowayout);
	FUNC12(&mtk_wdt->wdt_dev, 128);

	FUNC10(&mtk_wdt->wdt_dev, mtk_wdt);

	FUNC6(&mtk_wdt->wdt_dev);

	FUNC13(&mtk_wdt->wdt_dev);
	err = FUNC5(dev, &mtk_wdt->wdt_dev);
	if (FUNC8(err))
		return err;

	FUNC2(dev, "Watchdog enabled (timeout=%d sec, nowayout=%d)\n",
		 mtk_wdt->wdt_dev.timeout, nowayout);

	return 0;
}