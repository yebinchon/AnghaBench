
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dsi_data {int dss_clk; int module_id; } ;


 scalar_t__ OMAP_DSS_CLK_SRC_FCK ;
 unsigned long clk_get_rate (int ) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 unsigned long dsi_get_pll_hsdiv_dsi_rate (struct platform_device*) ;
 scalar_t__ dss_get_dsi_clk_source (int ) ;

__attribute__((used)) static unsigned long dsi_fclk_rate(struct platform_device *dsidev)
{
 unsigned long r;
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);

 if (dss_get_dsi_clk_source(dsi->module_id) == OMAP_DSS_CLK_SRC_FCK) {

  r = clk_get_rate(dsi->dss_clk);
 } else {

  r = dsi_get_pll_hsdiv_dsi_rate(dsidev);
 }

 return r;
}
