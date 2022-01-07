
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum omap_dss_clk_source { ____Placeholder_omap_dss_clk_source } omap_dss_clk_source ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;





 int OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DISPC ;
 int OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DISPC ;
 int OMAP_DSS_CLK_SRC_FCK ;
 int WARN_ON (int) ;

__attribute__((used)) static enum omap_dss_clk_source dpi_get_alt_clk_src(enum omap_channel channel)
{
 switch (channel) {
 case 130:
  return OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DISPC;
 case 129:
  return OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DISPC;
 case 128:
  return OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DISPC;
 default:

  WARN_ON(1);
  return OMAP_DSS_CLK_SRC_FCK;
 }
}
