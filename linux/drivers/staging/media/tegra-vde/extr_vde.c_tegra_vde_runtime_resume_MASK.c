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
struct tegra_vde {int /*<<< orphan*/  rst; int /*<<< orphan*/  clk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TEGRA_POWERGATE_VDEC ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct tegra_vde* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct tegra_vde *vde = FUNC1(dev);
	int err;

	err = FUNC2(TEGRA_POWERGATE_VDEC,
						vde->clk, vde->rst);
	if (err) {
		FUNC0(dev, "Failed to power up HW : %d\n", err);
		return err;
	}

	return 0;
}