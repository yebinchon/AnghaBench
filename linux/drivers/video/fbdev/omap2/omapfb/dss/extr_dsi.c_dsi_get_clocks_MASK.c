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
struct dsi_data {struct clk* dss_clk; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 struct clk* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct dsi_data* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *dsidev)
{
	struct dsi_data *dsi = FUNC4(dsidev);
	struct clk *clk;

	clk = FUNC3(&dsidev->dev, "fck");
	if (FUNC1(clk)) {
		FUNC0("can't get fck\n");
		return FUNC2(clk);
	}

	dsi->dss_clk = clk;

	return 0;
}