
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dsi_data {int module_id; int ulps_enabled; } ;


 int OMAP_DSS_CLK_SRC_FCK ;
 int dsi_cio_uninit (struct platform_device*) ;
 int dsi_enter_ulps (struct platform_device*) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_if_enable (struct platform_device*,int ) ;
 int dsi_pll_uninit (struct platform_device*,int) ;
 int dsi_vc_enable (struct platform_device*,int,int ) ;
 int dss_select_dsi_clk_source (int ,int ) ;

__attribute__((used)) static void dsi_display_uninit_dsi(struct platform_device *dsidev,
  bool disconnect_lanes, bool enter_ulps)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);

 if (enter_ulps && !dsi->ulps_enabled)
  dsi_enter_ulps(dsidev);


 dsi_if_enable(dsidev, 0);
 dsi_vc_enable(dsidev, 0, 0);
 dsi_vc_enable(dsidev, 1, 0);
 dsi_vc_enable(dsidev, 2, 0);
 dsi_vc_enable(dsidev, 3, 0);

 dss_select_dsi_clk_source(dsi->module_id, OMAP_DSS_CLK_SRC_FCK);
 dsi_cio_uninit(dsidev);
 dsi_pll_uninit(dsidev, disconnect_lanes);
}
