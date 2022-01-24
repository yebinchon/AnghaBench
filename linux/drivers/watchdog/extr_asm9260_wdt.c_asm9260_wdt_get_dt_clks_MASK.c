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
struct asm9260_wdt_priv {unsigned long wdt_freq; int /*<<< orphan*/  dev; void* clk; void* clk_ahb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_FREQ ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  asm9260_clk_disable_unprepare ; 
 unsigned long FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 void* FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC8(struct asm9260_wdt_priv *priv)
{
	int err;
	unsigned long clk;

	priv->clk = FUNC7(priv->dev, "mod");
	if (FUNC0(priv->clk)) {
		FUNC5(priv->dev, "Failed to get \"mod\" clk\n");
		return FUNC1(priv->clk);
	}

	/* configure AHB clock */
	priv->clk_ahb = FUNC7(priv->dev, "ahb");
	if (FUNC0(priv->clk_ahb)) {
		FUNC5(priv->dev, "Failed to get \"ahb\" clk\n");
		return FUNC1(priv->clk_ahb);
	}

	err = FUNC3(priv->clk_ahb);
	if (err) {
		FUNC5(priv->dev, "Failed to enable ahb_clk!\n");
		return err;
	}
	err = FUNC6(priv->dev,
				       asm9260_clk_disable_unprepare,
				       priv->clk_ahb);
	if (err)
		return err;

	err = FUNC4(priv->clk, CLOCK_FREQ);
	if (err) {
		FUNC5(priv->dev, "Failed to set rate!\n");
		return err;
	}

	err = FUNC3(priv->clk);
	if (err) {
		FUNC5(priv->dev, "Failed to enable clk!\n");
		return err;
	}
	err = FUNC6(priv->dev,
				       asm9260_clk_disable_unprepare,
				       priv->clk);
	if (err)
		return err;

	/* wdt has internal divider */
	clk = FUNC2(priv->clk);
	if (!clk) {
		FUNC5(priv->dev, "Failed, clk is 0!\n");
		return -EINVAL;
	}

	priv->wdt_freq = clk / 2;

	return 0;
}