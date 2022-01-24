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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct dsi_data {scalar_t__ scp_clk_refcount; int vdds_dsi_enabled; int /*<<< orphan*/ * vdds_dsi_reg; int /*<<< orphan*/  pll; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct dsi_data* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC7 (struct device*) ; 

__attribute__((used)) static void FUNC8(struct device *dev, struct device *master, void *data)
{
	struct platform_device *dsidev = FUNC7(dev);
	struct dsi_data *dsi = FUNC1(dsidev);

	FUNC4(&dsidev->dev);

	FUNC0(dsi->scp_clk_refcount > 0);

	FUNC3(&dsi->pll);

	FUNC2(dsidev);

	FUNC5(&dsidev->dev);

	if (dsi->vdds_dsi_reg != NULL && dsi->vdds_dsi_enabled) {
		FUNC6(dsi->vdds_dsi_reg);
		dsi->vdds_dsi_enabled = false;
	}
}