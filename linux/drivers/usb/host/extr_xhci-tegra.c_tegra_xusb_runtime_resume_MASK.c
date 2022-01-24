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
struct tegra_xusb {int /*<<< orphan*/  supplies; TYPE_1__* soc; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_supplies; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct tegra_xusb* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_xusb*) ; 
 int FUNC5 (struct tegra_xusb*) ; 
 int FUNC6 (struct tegra_xusb*) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct tegra_xusb *tegra = FUNC1(dev);
	int err;

	err = FUNC5(tegra);
	if (err) {
		FUNC0(dev, "failed to enable clocks: %d\n", err);
		return err;
	}

	err = FUNC3(tegra->soc->num_supplies, tegra->supplies);
	if (err) {
		FUNC0(dev, "failed to enable regulators: %d\n", err);
		goto disable_clk;
	}

	err = FUNC6(tegra);
	if (err < 0) {
		FUNC0(dev, "failed to enable PHYs: %d\n", err);
		goto disable_regulator;
	}

	return 0;

disable_regulator:
	FUNC2(tegra->soc->num_supplies, tegra->supplies);
disable_clk:
	FUNC4(tegra);
	return err;
}