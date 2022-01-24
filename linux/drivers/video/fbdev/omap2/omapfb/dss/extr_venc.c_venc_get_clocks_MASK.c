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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {struct clk* tv_dac_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FEAT_VENC_REQUIRES_TV_DAC_CLK ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 struct clk* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ venc ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct clk *clk;

	if (FUNC4(FEAT_VENC_REQUIRES_TV_DAC_CLK)) {
		clk = FUNC3(&pdev->dev, "tv_dac_clk");
		if (FUNC1(clk)) {
			FUNC0("can't get tv_dac_clk\n");
			return FUNC2(clk);
		}
	} else {
		clk = NULL;
	}

	venc.tv_dac_clk = clk;

	return 0;
}