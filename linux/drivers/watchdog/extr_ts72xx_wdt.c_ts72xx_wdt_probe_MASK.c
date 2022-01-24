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
struct watchdog_device {int min_timeout; int max_hw_heartbeat_ms; int /*<<< orphan*/  timeout; struct device* parent; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct ts72xx_wdt_priv {struct watchdog_device wdd; void* feed_reg; void* control_reg; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  TS72XX_WDT_DEFAULT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct ts72xx_wdt_priv* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct platform_device*,int) ; 
 int FUNC5 (struct device*,struct watchdog_device*) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  timeout ; 
 int /*<<< orphan*/  ts72xx_wdt_ident ; 
 int /*<<< orphan*/  ts72xx_wdt_ops ; 
 int /*<<< orphan*/  FUNC6 (struct watchdog_device*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct watchdog_device*,struct ts72xx_wdt_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct watchdog_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct ts72xx_wdt_priv *priv;
	struct watchdog_device *wdd;
	int ret;

	priv = FUNC3(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->control_reg = FUNC4(pdev, 0);
	if (FUNC0(priv->control_reg))
		return FUNC1(priv->control_reg);

	priv->feed_reg = FUNC4(pdev, 1);
	if (FUNC0(priv->feed_reg))
		return FUNC1(priv->feed_reg);

	wdd = &priv->wdd;
	wdd->info = &ts72xx_wdt_ident;
	wdd->ops = &ts72xx_wdt_ops;
	wdd->min_timeout = 1;
	wdd->max_hw_heartbeat_ms = 8000;
	wdd->parent = dev;

	FUNC8(wdd, nowayout);

	wdd->timeout = TS72XX_WDT_DEFAULT_TIMEOUT;
	FUNC6(wdd, timeout, dev);

	FUNC7(wdd, priv);

	ret = FUNC5(dev, wdd);
	if (ret)
		return ret;

	FUNC2(dev, "TS-72xx Watchdog driver\n");

	return 0;
}