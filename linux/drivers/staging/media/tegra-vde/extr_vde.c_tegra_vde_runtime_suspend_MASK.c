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
struct tegra_vde {int /*<<< orphan*/  clk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TEGRA_POWERGATE_VDEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct tegra_vde* FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct tegra_vde *vde = FUNC2(dev);
	int err;

	err = FUNC3(TEGRA_POWERGATE_VDEC);
	if (err) {
		FUNC1(dev, "Failed to power down HW: %d\n", err);
		return err;
	}

	FUNC0(vde->clk);

	return 0;
}