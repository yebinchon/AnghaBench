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
struct watchdog_device {int min_timeout; int /*<<< orphan*/  timeout; struct device* parent; int /*<<< orphan*/  max_timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct device {int dummy; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct asm9260_wdt_priv {size_t mode; scalar_t__ irq; int /*<<< orphan*/  wdt_freq; struct watchdog_device wdd; int /*<<< orphan*/  rst; int /*<<< orphan*/  iobase; struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASM9260_WDT_DEFAULT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t HW_RESET ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct asm9260_wdt_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct asm9260_wdt_priv*) ; 
 int /*<<< orphan*/  asm9260_wdt_ident ; 
 int /*<<< orphan*/  asm9260_wdt_irq ; 
 int /*<<< orphan*/  asm9260_wdt_ops ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ,char const* const) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 struct asm9260_wdt_priv* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct asm9260_wdt_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*) ; 
 int FUNC11 (struct device*,struct watchdog_device*) ; 
 scalar_t__ FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct asm9260_wdt_priv*) ; 
 int /*<<< orphan*/  FUNC14 (struct watchdog_device*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct watchdog_device*,struct asm9260_wdt_priv*) ; 
 int /*<<< orphan*/  FUNC16 (struct watchdog_device*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct asm9260_wdt_priv *priv;
	struct watchdog_device *wdd;
	int ret;
	static const char * const mode_name[] = { "hw", "sw", "debug", };

	priv = FUNC7(dev, sizeof(struct asm9260_wdt_priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->dev = dev;

	priv->iobase = FUNC8(pdev, 0);
	if (FUNC1(priv->iobase))
		return FUNC2(priv->iobase);

	priv->rst = FUNC10(dev, "wdt_rst");
	if (FUNC1(priv->rst))
		return FUNC2(priv->rst);

	ret = FUNC3(priv);
	if (ret)
		return ret;

	wdd = &priv->wdd;
	wdd->info = &asm9260_wdt_ident;
	wdd->ops = &asm9260_wdt_ops;
	wdd->min_timeout = 1;
	wdd->max_timeout = FUNC0(priv->wdt_freq);
	wdd->parent = dev;

	FUNC15(wdd, priv);

	/*
	 * If 'timeout-sec' unspecified in devicetree, assume a 30 second
	 * default, unless the max timeout is less than 30 seconds, then use
	 * the max instead.
	 */
	wdd->timeout = ASM9260_WDT_DEFAULT_TIMEOUT;
	FUNC14(wdd, 0, dev);

	FUNC4(priv);

	if (priv->mode != HW_RESET)
		priv->irq = FUNC12(pdev, 0);

	if (priv->irq > 0) {
		/*
		 * Not all supported platforms specify an interrupt for the
		 * watchdog, so let's make it optional.
		 */
		ret = FUNC9(dev, priv->irq, asm9260_wdt_irq, 0,
				       pdev->name, priv);
		if (ret < 0)
			FUNC6(dev, "failed to request IRQ\n");
	}

	FUNC16(wdd, 128);

	FUNC17(wdd);
	FUNC18(wdd);
	ret = FUNC11(dev, wdd);
	if (ret)
		return ret;

	FUNC13(pdev, priv);

	FUNC5(dev, "Watchdog enabled (timeout: %d sec, mode: %s)\n",
		 wdd->timeout, mode_name[priv->mode]);
	return 0;
}