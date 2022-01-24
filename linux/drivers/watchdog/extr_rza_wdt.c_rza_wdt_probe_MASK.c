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
typedef  scalar_t__ u8 ;
struct TYPE_4__ {unsigned long max_timeout; int max_hw_heartbeat_ms; int min_timeout; int /*<<< orphan*/  timeout; struct device* parent; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct rza_wdt {scalar_t__ cks; TYPE_1__ wdev; int /*<<< orphan*/  clk; int /*<<< orphan*/  base; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 scalar_t__ CKS_3BIT ; 
 scalar_t__ CKS_4BIT ; 
 int /*<<< orphan*/  DEFAULT_TIMEOUT ; 
 unsigned long DIVIDER_3BIT ; 
 unsigned long DIVIDER_4BIT ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long U8_MAX ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 struct rza_wdt* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,TYPE_1__*) ; 
 scalar_t__ FUNC9 (struct device*) ; 
 int /*<<< orphan*/  rza_wdt_ident ; 
 int /*<<< orphan*/  rza_wdt_ops ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct rza_wdt*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct rza_wdt *priv;
	unsigned long rate;
	int ret;

	priv = FUNC6(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->base = FUNC7(pdev, 0);
	if (FUNC0(priv->base))
		return FUNC1(priv->base);

	priv->clk = FUNC5(dev, NULL);
	if (FUNC0(priv->clk))
		return FUNC1(priv->clk);

	rate = FUNC2(priv->clk);
	if (rate < 16384) {
		FUNC4(dev, "invalid clock rate (%ld)\n", rate);
		return -ENOENT;
	}

	priv->wdev.info = &rza_wdt_ident,
	priv->wdev.ops = &rza_wdt_ops,
	priv->wdev.parent = dev;

	priv->cks = (u8)(uintptr_t) FUNC9(dev);
	if (priv->cks == CKS_4BIT) {
		/* Assume slowest clock rate possible (CKS=0xF) */
		priv->wdev.max_timeout = (DIVIDER_4BIT * U8_MAX) / rate;

	} else if (priv->cks == CKS_3BIT) {
		/* Assume slowest clock rate possible (CKS=7) */
		rate /= DIVIDER_3BIT;

		/*
		 * Since the max possible timeout of our 8-bit count
		 * register is less than a second, we must use
		 * max_hw_heartbeat_ms.
		 */
		priv->wdev.max_hw_heartbeat_ms = (1000 * U8_MAX) / rate;
		FUNC3(dev, "max hw timeout of %dms\n",
			priv->wdev.max_hw_heartbeat_ms);
	}

	priv->wdev.min_timeout = 1;
	priv->wdev.timeout = DEFAULT_TIMEOUT;

	FUNC10(&priv->wdev, 0, dev);
	FUNC11(&priv->wdev, priv);

	ret = FUNC8(dev, &priv->wdev);
	if (ret)
		FUNC4(dev, "Cannot register watchdog device\n");

	return ret;
}