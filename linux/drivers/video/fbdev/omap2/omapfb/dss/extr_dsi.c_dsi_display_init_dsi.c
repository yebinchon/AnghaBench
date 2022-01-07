
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dsi_data {scalar_t__ module_id; int pll; } ;


 int DSSDBG (char*) ;
 int OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DSI ;
 int OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DSI ;
 int OMAP_DSS_CLK_SRC_FCK ;
 int _dsi_print_reset_status (struct platform_device*) ;
 int dsi_cio_init (struct platform_device*) ;
 int dsi_cio_uninit (struct platform_device*) ;
 int dsi_configure_dsi_clocks (struct platform_device*) ;
 int dsi_force_tx_stop_mode_io (struct platform_device*) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_if_enable (struct platform_device*,int) ;
 int dsi_proto_config (struct platform_device*) ;
 int dsi_proto_timings (struct platform_device*) ;
 int dsi_set_lp_clk_divisor (struct platform_device*) ;
 int dsi_vc_enable (struct platform_device*,int,int) ;
 int dss_pll_disable (int *) ;
 int dss_pll_enable (int *) ;
 int dss_select_dsi_clk_source (scalar_t__,int ) ;

__attribute__((used)) static int dsi_display_init_dsi(struct platform_device *dsidev)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 int r;

 r = dss_pll_enable(&dsi->pll);
 if (r)
  goto err0;

 r = dsi_configure_dsi_clocks(dsidev);
 if (r)
  goto err1;

 dss_select_dsi_clk_source(dsi->module_id, dsi->module_id == 0 ?
   OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DSI :
   OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DSI);

 DSSDBG("PLL OK\n");

 r = dsi_cio_init(dsidev);
 if (r)
  goto err2;

 _dsi_print_reset_status(dsidev);

 dsi_proto_timings(dsidev);
 dsi_set_lp_clk_divisor(dsidev);

 if (1)
  _dsi_print_reset_status(dsidev);

 r = dsi_proto_config(dsidev);
 if (r)
  goto err3;


 dsi_vc_enable(dsidev, 0, 1);
 dsi_vc_enable(dsidev, 1, 1);
 dsi_vc_enable(dsidev, 2, 1);
 dsi_vc_enable(dsidev, 3, 1);
 dsi_if_enable(dsidev, 1);
 dsi_force_tx_stop_mode_io(dsidev);

 return 0;
err3:
 dsi_cio_uninit(dsidev);
err2:
 dss_select_dsi_clk_source(dsi->module_id, OMAP_DSS_CLK_SRC_FCK);
err1:
 dss_pll_disable(&dsi->pll);
err0:
 return r;
}
