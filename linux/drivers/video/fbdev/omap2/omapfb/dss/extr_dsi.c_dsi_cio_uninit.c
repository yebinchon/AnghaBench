
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dsi_data {int module_id; } ;


 int DSI_CLK_CTRL ;
 int DSI_COMPLEXIO_POWER_OFF ;
 int REG_FLD_MOD (struct platform_device*,int ,int ,int,int) ;
 int dsi_cio_power (struct platform_device*,int ) ;
 int dsi_disable_scp_clk (struct platform_device*) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_get_lane_mask (struct platform_device*) ;
 int dss_dsi_disable_pads (int ,int ) ;

__attribute__((used)) static void dsi_cio_uninit(struct platform_device *dsidev)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);


 REG_FLD_MOD(dsidev, DSI_CLK_CTRL, 0, 13, 13);

 dsi_cio_power(dsidev, DSI_COMPLEXIO_POWER_OFF);
 dsi_disable_scp_clk(dsidev);
 dss_dsi_disable_pads(dsi->module_id, dsi_get_lane_mask(dsidev));
}
