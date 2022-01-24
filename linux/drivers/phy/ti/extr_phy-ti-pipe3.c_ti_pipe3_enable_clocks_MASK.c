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
struct ti_pipe3 {int /*<<< orphan*/  refclk; int /*<<< orphan*/  wkupclk; int /*<<< orphan*/  dev; int /*<<< orphan*/  div_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC4(struct ti_pipe3 *phy)
{
	int ret = 0;

	if (!FUNC0(phy->refclk)) {
		ret = FUNC2(phy->refclk);
		if (ret) {
			FUNC3(phy->dev, "Failed to enable refclk %d\n", ret);
			return ret;
		}
	}

	if (!FUNC0(phy->wkupclk)) {
		ret = FUNC2(phy->wkupclk);
		if (ret) {
			FUNC3(phy->dev, "Failed to enable wkupclk %d\n", ret);
			goto disable_refclk;
		}
	}

	if (!FUNC0(phy->div_clk)) {
		ret = FUNC2(phy->div_clk);
		if (ret) {
			FUNC3(phy->dev, "Failed to enable div_clk %d\n", ret);
			goto disable_wkupclk;
		}
	}

	return 0;

disable_wkupclk:
	if (!FUNC0(phy->wkupclk))
		FUNC1(phy->wkupclk);

disable_refclk:
	if (!FUNC0(phy->refclk))
		FUNC1(phy->refclk);

	return ret;
}