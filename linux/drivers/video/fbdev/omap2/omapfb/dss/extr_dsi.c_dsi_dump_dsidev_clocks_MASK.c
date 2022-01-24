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
struct seq_file {int dummy; } ;
struct platform_device {int dummy; } ;
struct dss_pll_clock_info {int clkdco; int /*<<< orphan*/ * mX; int /*<<< orphan*/ * clkout; int /*<<< orphan*/  m; int /*<<< orphan*/  n; int /*<<< orphan*/  fint; } ;
struct dss_pll {int /*<<< orphan*/  clkin; struct dss_pll_clock_info cinfo; } ;
struct TYPE_2__ {int lp_clk; } ;
struct dsi_data {int module_id; TYPE_1__ current_lp_cinfo; struct dss_pll pll; } ;
typedef  enum omap_dss_clk_source { ____Placeholder_omap_dss_clk_source } omap_dss_clk_source ;

/* Variables and functions */
 size_t HSDIV_DISPC ; 
 size_t HSDIV_DSI ; 
 int OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DISPC ; 
 int OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DSI ; 
 int OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DISPC ; 
 int OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DSI ; 
 int OMAP_DSS_CLK_SRC_FCK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct platform_device*) ; 
 struct dsi_data* FUNC2 (struct platform_device*) ; 
 int FUNC3 (struct platform_device*) ; 
 scalar_t__ FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 () ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct seq_file*,char*,int,...) ; 

__attribute__((used)) static void FUNC11(struct platform_device *dsidev,
		struct seq_file *s)
{
	struct dsi_data *dsi = FUNC2(dsidev);
	struct dss_pll_clock_info *cinfo = &dsi->pll.cinfo;
	enum omap_dss_clk_source dispc_clk_src, dsi_clk_src;
	int dsi_module = dsi->module_id;
	struct dss_pll *pll = &dsi->pll;

	dispc_clk_src = FUNC7();
	dsi_clk_src = FUNC8(dsi_module);

	if (FUNC4(dsidev))
		return;

	FUNC10(s,	"- DSI%d PLL -\n", dsi_module + 1);

	FUNC10(s,	"dsi pll clkin\t%lu\n", FUNC0(pll->clkin));

	FUNC10(s,	"Fint\t\t%-16lun %u\n", cinfo->fint, cinfo->n);

	FUNC10(s,	"CLKIN4DDR\t%-16lum %u\n",
			cinfo->clkdco, cinfo->m);

	FUNC10(s,	"DSI_PLL_HSDIV_DISPC (%s)\t%-16lum_dispc %u\t(%s)\n",
			FUNC6(dsi_module == 0 ?
				OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DISPC :
				OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DISPC),
			cinfo->clkout[HSDIV_DISPC],
			cinfo->mX[HSDIV_DISPC],
			dispc_clk_src == OMAP_DSS_CLK_SRC_FCK ?
			"off" : "on");

	FUNC10(s,	"DSI_PLL_HSDIV_DSI (%s)\t%-16lum_dsi %u\t(%s)\n",
			FUNC6(dsi_module == 0 ?
				OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DSI :
				OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DSI),
			cinfo->clkout[HSDIV_DSI],
			cinfo->mX[HSDIV_DSI],
			dsi_clk_src == OMAP_DSS_CLK_SRC_FCK ?
			"off" : "on");

	FUNC10(s,	"- DSI%d -\n", dsi_module + 1);

	FUNC10(s,	"dsi fclk source = %s (%s)\n",
			FUNC9(dsi_clk_src),
			FUNC6(dsi_clk_src));

	FUNC10(s,	"DSI_FCLK\t%lu\n", FUNC1(dsidev));

	FUNC10(s,	"DDR_CLK\t\t%lu\n",
			cinfo->clkdco / 4);

	FUNC10(s,	"TxByteClkHS\t%lu\n", FUNC3(dsidev));

	FUNC10(s,	"LP_CLK\t\t%lu\n", dsi->current_lp_cinfo.lp_clk);

	FUNC5(dsidev);
}