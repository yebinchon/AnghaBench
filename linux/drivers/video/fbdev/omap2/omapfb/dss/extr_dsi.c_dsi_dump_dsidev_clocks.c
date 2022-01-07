
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct platform_device {int dummy; } ;
struct dss_pll_clock_info {int clkdco; int * mX; int * clkout; int m; int n; int fint; } ;
struct dss_pll {int clkin; struct dss_pll_clock_info cinfo; } ;
struct TYPE_2__ {int lp_clk; } ;
struct dsi_data {int module_id; TYPE_1__ current_lp_cinfo; struct dss_pll pll; } ;
typedef enum omap_dss_clk_source { ____Placeholder_omap_dss_clk_source } omap_dss_clk_source ;


 size_t HSDIV_DISPC ;
 size_t HSDIV_DSI ;
 int OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DISPC ;
 int OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DSI ;
 int OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DISPC ;
 int OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DSI ;
 int OMAP_DSS_CLK_SRC_FCK ;
 int clk_get_rate (int ) ;
 int dsi_fclk_rate (struct platform_device*) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_get_txbyteclkhs (struct platform_device*) ;
 scalar_t__ dsi_runtime_get (struct platform_device*) ;
 int dsi_runtime_put (struct platform_device*) ;
 int dss_feat_get_clk_source_name (int) ;
 int dss_get_dispc_clk_source () ;
 int dss_get_dsi_clk_source (int) ;
 int dss_get_generic_clk_source_name (int) ;
 int seq_printf (struct seq_file*,char*,int,...) ;

__attribute__((used)) static void dsi_dump_dsidev_clocks(struct platform_device *dsidev,
  struct seq_file *s)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 struct dss_pll_clock_info *cinfo = &dsi->pll.cinfo;
 enum omap_dss_clk_source dispc_clk_src, dsi_clk_src;
 int dsi_module = dsi->module_id;
 struct dss_pll *pll = &dsi->pll;

 dispc_clk_src = dss_get_dispc_clk_source();
 dsi_clk_src = dss_get_dsi_clk_source(dsi_module);

 if (dsi_runtime_get(dsidev))
  return;

 seq_printf(s, "- DSI%d PLL -\n", dsi_module + 1);

 seq_printf(s, "dsi pll clkin\t%lu\n", clk_get_rate(pll->clkin));

 seq_printf(s, "Fint\t\t%-16lun %u\n", cinfo->fint, cinfo->n);

 seq_printf(s, "CLKIN4DDR\t%-16lum %u\n",
   cinfo->clkdco, cinfo->m);

 seq_printf(s, "DSI_PLL_HSDIV_DISPC (%s)\t%-16lum_dispc %u\t(%s)\n",
   dss_feat_get_clk_source_name(dsi_module == 0 ?
    OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DISPC :
    OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DISPC),
   cinfo->clkout[HSDIV_DISPC],
   cinfo->mX[HSDIV_DISPC],
   dispc_clk_src == OMAP_DSS_CLK_SRC_FCK ?
   "off" : "on");

 seq_printf(s, "DSI_PLL_HSDIV_DSI (%s)\t%-16lum_dsi %u\t(%s)\n",
   dss_feat_get_clk_source_name(dsi_module == 0 ?
    OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DSI :
    OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DSI),
   cinfo->clkout[HSDIV_DSI],
   cinfo->mX[HSDIV_DSI],
   dsi_clk_src == OMAP_DSS_CLK_SRC_FCK ?
   "off" : "on");

 seq_printf(s, "- DSI%d -\n", dsi_module + 1);

 seq_printf(s, "dsi fclk source = %s (%s)\n",
   dss_get_generic_clk_source_name(dsi_clk_src),
   dss_feat_get_clk_source_name(dsi_clk_src));

 seq_printf(s, "DSI_FCLK\t%lu\n", dsi_fclk_rate(dsidev));

 seq_printf(s, "DDR_CLK\t\t%lu\n",
   cinfo->clkdco / 4);

 seq_printf(s, "TxByteClkHS\t%lu\n", dsi_get_txbyteclkhs(dsidev));

 seq_printf(s, "LP_CLK\t\t%lu\n", dsi->current_lp_cinfo.lp_clk);

 dsi_runtime_put(dsidev);
}
