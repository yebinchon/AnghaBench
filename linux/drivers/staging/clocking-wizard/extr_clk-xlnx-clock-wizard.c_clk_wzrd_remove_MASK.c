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
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct clk_wzrd {int /*<<< orphan*/  axi_clk; int /*<<< orphan*/  nb; int /*<<< orphan*/  clk_in1; scalar_t__ speed_grade; int /*<<< orphan*/ * clks_internal; int /*<<< orphan*/ * clkout; } ;

/* Variables and functions */
 int WZRD_NUM_OUTPUTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct clk_wzrd* FUNC4 (struct platform_device*) ; 
 int wzrd_clk_int_max ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	int i;
	struct clk_wzrd *clk_wzrd = FUNC4(pdev);

	FUNC3(pdev->dev.of_node);

	for (i = 0; i < WZRD_NUM_OUTPUTS; i++)
		FUNC2(clk_wzrd->clkout[i]);
	for (i = 0; i < wzrd_clk_int_max; i++)
		FUNC2(clk_wzrd->clks_internal[i]);

	if (clk_wzrd->speed_grade) {
		FUNC1(clk_wzrd->axi_clk, &clk_wzrd->nb);
		FUNC1(clk_wzrd->clk_in1, &clk_wzrd->nb);
	}

	FUNC0(clk_wzrd->axi_clk);

	return 0;
}