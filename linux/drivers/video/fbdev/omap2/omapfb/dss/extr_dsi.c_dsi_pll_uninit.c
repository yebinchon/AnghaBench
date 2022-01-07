
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dsi_data {int vdds_dsi_enabled; int vdds_dsi_reg; } ;


 int DSI_PLL_POWER_OFF ;
 int DSSDBG (char*) ;
 int WARN_ON (int) ;
 int dsi_disable_scp_clk (struct platform_device*) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_pll_power (struct platform_device*,int ) ;
 int dsi_runtime_put (struct platform_device*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static void dsi_pll_uninit(struct platform_device *dsidev, bool disconnect_lanes)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);

 dsi_pll_power(dsidev, DSI_PLL_POWER_OFF);
 if (disconnect_lanes) {
  WARN_ON(!dsi->vdds_dsi_enabled);
  regulator_disable(dsi->vdds_dsi_reg);
  dsi->vdds_dsi_enabled = 0;
 }

 dsi_disable_scp_clk(dsidev);
 dsi_runtime_put(dsidev);

 DSSDBG("PLL uninit done\n");
}
