#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct exynos5_usbdrd_phy {int /*<<< orphan*/ * itpclk; int /*<<< orphan*/  dev; int /*<<< orphan*/ * utmiclk; int /*<<< orphan*/ * pipeclk; TYPE_1__* drv_data; int /*<<< orphan*/  extrefclk; int /*<<< orphan*/ * ref_clk; int /*<<< orphan*/ * clk; } ;
struct TYPE_2__ {int /*<<< orphan*/  has_common_clk_gate; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (unsigned long,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct exynos5_usbdrd_phy *phy_drd)
{
	unsigned long ref_rate;
	int ret;

	phy_drd->clk = FUNC5(phy_drd->dev, "phy");
	if (FUNC0(phy_drd->clk)) {
		FUNC3(phy_drd->dev, "Failed to get phy clock\n");
		return FUNC1(phy_drd->clk);
	}

	phy_drd->ref_clk = FUNC5(phy_drd->dev, "ref");
	if (FUNC0(phy_drd->ref_clk)) {
		FUNC3(phy_drd->dev, "Failed to get phy reference clock\n");
		return FUNC1(phy_drd->ref_clk);
	}
	ref_rate = FUNC2(phy_drd->ref_clk);

	ret = FUNC6(ref_rate, &phy_drd->extrefclk);
	if (ret) {
		FUNC3(phy_drd->dev, "Clock rate (%ld) not supported\n",
			ref_rate);
		return ret;
	}

	if (!phy_drd->drv_data->has_common_clk_gate) {
		phy_drd->pipeclk = FUNC5(phy_drd->dev, "phy_pipe");
		if (FUNC0(phy_drd->pipeclk)) {
			FUNC4(phy_drd->dev,
				 "PIPE3 phy operational clock not specified\n");
			phy_drd->pipeclk = NULL;
		}

		phy_drd->utmiclk = FUNC5(phy_drd->dev, "phy_utmi");
		if (FUNC0(phy_drd->utmiclk)) {
			FUNC4(phy_drd->dev,
				 "UTMI phy operational clock not specified\n");
			phy_drd->utmiclk = NULL;
		}

		phy_drd->itpclk = FUNC5(phy_drd->dev, "itp");
		if (FUNC0(phy_drd->itpclk)) {
			FUNC4(phy_drd->dev,
				 "ITP clock from main OSC not specified\n");
			phy_drd->itpclk = NULL;
		}
	}

	return 0;
}