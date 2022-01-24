#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct tegra_usb_phy {scalar_t__ regs; TYPE_2__* ulpi; TYPE_1__ u_phy; int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  clk; } ;
struct TYPE_4__ {scalar_t__ io_priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ULPI_VIEWPORT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ulpi_viewport_access_ops ; 

__attribute__((used)) static int FUNC7(struct tegra_usb_phy *phy)
{
	int err;

	phy->clk = FUNC3(phy->u_phy.dev, "ulpi-link");
	if (FUNC0(phy->clk)) {
		err = FUNC1(phy->clk);
		FUNC2(phy->u_phy.dev, "Failed to get ULPI clock: %d\n", err);
		return err;
	}

	err = FUNC4(phy->u_phy.dev, phy->reset_gpio,
		"ulpi_phy_reset_b");
	if (err < 0) {
		FUNC2(phy->u_phy.dev, "Request failed for GPIO %d: %d\n",
			phy->reset_gpio, err);
		return err;
	}

	err = FUNC5(phy->reset_gpio, 0);
	if (err < 0) {
		FUNC2(phy->u_phy.dev,
			"GPIO %d direction not set to output: %d\n",
			phy->reset_gpio, err);
		return err;
	}

	phy->ulpi = FUNC6(&ulpi_viewport_access_ops, 0);
	if (!phy->ulpi) {
		FUNC2(phy->u_phy.dev, "Failed to create ULPI OTG\n");
		err = -ENOMEM;
		return err;
	}

	phy->ulpi->io_priv = phy->regs + ULPI_VIEWPORT;
	return 0;
}