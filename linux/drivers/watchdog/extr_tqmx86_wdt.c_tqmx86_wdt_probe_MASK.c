#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int min_timeout; int max_timeout; int max_hw_heartbeat_ms; int /*<<< orphan*/  timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; struct device* parent; } ;
struct tqmx86_wdt {TYPE_1__ wdd; int /*<<< orphan*/  io_base; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 int /*<<< orphan*/  WATCHDOG_NOWAYOUT ; 
 int /*<<< orphan*/  WDT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tqmx86_wdt* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,TYPE_1__*) ; 
 struct resource* FUNC4 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*) ; 
 int /*<<< orphan*/  timeout ; 
 int /*<<< orphan*/  tqmx86_wdt_info ; 
 int /*<<< orphan*/  tqmx86_wdt_ops ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct tqmx86_wdt*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct tqmx86_wdt *priv;
	struct resource *res;
	int err;

	priv = FUNC2(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	res = FUNC4(pdev, IORESOURCE_IO, 0);
	if (!res)
		return -ENODEV;

	priv->io_base = FUNC1(dev, res->start, FUNC5(res));
	if (!priv->io_base)
		return -ENOMEM;

	FUNC8(&priv->wdd, priv);

	priv->wdd.parent = dev;
	priv->wdd.info = &tqmx86_wdt_info;
	priv->wdd.ops = &tqmx86_wdt_ops;
	priv->wdd.min_timeout = 1;
	priv->wdd.max_timeout = 4096;
	priv->wdd.max_hw_heartbeat_ms = 4096*1000;
	priv->wdd.timeout = WDT_TIMEOUT;

	FUNC7(&priv->wdd, timeout, dev);
	FUNC9(&priv->wdd, WATCHDOG_NOWAYOUT);

	FUNC6(&priv->wdd, priv->wdd.timeout);

	err = FUNC3(dev, &priv->wdd);
	if (err)
		return err;

	FUNC0(dev, "TQMx86 watchdog\n");

	return 0;
}