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
struct platform_device {int dummy; } ;
struct TYPE_3__ {unsigned long lp_clk; unsigned int lp_clk_div; } ;
struct TYPE_4__ {unsigned int lp_clk_div; } ;
struct dsi_data {TYPE_1__ current_lp_cinfo; TYPE_2__ user_lp_cinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_CLK_CTRL ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned long) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FEAT_PARAM_DSIPLL_LPDIV ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*,int /*<<< orphan*/ ,int,int,int) ; 
 unsigned long FUNC2 (struct platform_device*) ; 
 struct dsi_data* FUNC3 (struct platform_device*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *dsidev)
{
	struct dsi_data *dsi = FUNC3(dsidev);
	unsigned long dsi_fclk;
	unsigned lp_clk_div;
	unsigned long lp_clk;
	unsigned lpdiv_max = FUNC4(FEAT_PARAM_DSIPLL_LPDIV);


	lp_clk_div = dsi->user_lp_cinfo.lp_clk_div;

	if (lp_clk_div == 0 || lp_clk_div > lpdiv_max)
		return -EINVAL;

	dsi_fclk = FUNC2(dsidev);

	lp_clk = dsi_fclk / 2 / lp_clk_div;

	FUNC0("LP_CLK_DIV %u, LP_CLK %lu\n", lp_clk_div, lp_clk);
	dsi->current_lp_cinfo.lp_clk = lp_clk;
	dsi->current_lp_cinfo.lp_clk_div = lp_clk_div;

	/* LP_CLK_DIVISOR */
	FUNC1(dsidev, DSI_CLK_CTRL, lp_clk_div, 12, 0);

	/* LP_RX_SYNCHRO_ENABLE */
	FUNC1(dsidev, DSI_CLK_CTRL, dsi_fclk > 30000000 ? 1 : 0, 21, 21);

	return 0;
}