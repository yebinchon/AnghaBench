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
struct TYPE_7__ {int /*<<< orphan*/  timeout; struct device* parent; int /*<<< orphan*/  min_timeout; int /*<<< orphan*/  max_timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct uniphier_wdt_dev {TYPE_1__ wdt_dev; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  WDTRSTSEL ; 
 int /*<<< orphan*/  WDTRSTSEL_RSTSEL_BOTH ; 
 int /*<<< orphan*/  WDT_DEFAULT_TIMEOUT ; 
 int /*<<< orphan*/  WDT_PERIOD_MAX ; 
 int /*<<< orphan*/  WDT_PERIOD_MIN ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct uniphier_wdt_dev* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  nowayout ; 
 struct device_node* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 int FUNC7 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC8 (struct device_node*) ; 
 int /*<<< orphan*/  timeout ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  uniphier_wdt_info ; 
 int /*<<< orphan*/  uniphier_wdt_ops ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct uniphier_wdt_dev*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct uniphier_wdt_dev *wdev;
	struct regmap *regmap;
	struct device_node *parent;
	int ret;

	wdev = FUNC3(dev, sizeof(*wdev), GFP_KERNEL);
	if (!wdev)
		return -ENOMEM;

	parent = FUNC5(dev->of_node); /* parent should be syscon node */
	regmap = FUNC8(parent);
	FUNC6(parent);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	wdev->regmap = regmap;
	wdev->wdt_dev.info = &uniphier_wdt_info;
	wdev->wdt_dev.ops = &uniphier_wdt_ops;
	wdev->wdt_dev.max_timeout = WDT_PERIOD_MAX;
	wdev->wdt_dev.min_timeout = WDT_PERIOD_MIN;
	wdev->wdt_dev.timeout = WDT_DEFAULT_TIMEOUT;
	wdev->wdt_dev.parent = dev;

	FUNC10(&wdev->wdt_dev, timeout, dev);
	FUNC12(&wdev->wdt_dev, nowayout);
	FUNC13(&wdev->wdt_dev);

	FUNC11(&wdev->wdt_dev, wdev);

	FUNC9(&wdev->wdt_dev);
	ret = FUNC7(wdev->regmap, WDTRSTSEL, WDTRSTSEL_RSTSEL_BOTH);
	if (ret)
		return ret;

	ret = FUNC4(dev, &wdev->wdt_dev);
	if (ret)
		return ret;

	FUNC2(dev, "watchdog driver (timeout=%d sec, nowayout=%d)\n",
		 wdev->wdt_dev.timeout, nowayout);

	return 0;
}