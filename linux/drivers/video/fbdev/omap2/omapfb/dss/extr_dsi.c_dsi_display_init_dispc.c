
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct omap_overlay_manager {int id; } ;
struct TYPE_4__ {int stallmode; int fifohandcheck; scalar_t__ lcden_sig_polarity; int video_port_width; int io_pad_mode; } ;
struct TYPE_3__ {int interlace; int sync_pclk_edge; void* de_level; int data_pclk_edge; void* vsync_level; void* hsync_level; } ;
struct dsi_data {scalar_t__ module_id; scalar_t__ mode; TYPE_2__ mgr_config; int pix_fmt; TYPE_1__ timings; } ;


 int DSSERR (char*) ;
 int DSS_IO_PAD_MODE_BYPASS ;
 int OMAPDSS_DRIVE_SIG_FALLING_EDGE ;
 int OMAPDSS_DRIVE_SIG_RISING_EDGE ;
 void* OMAPDSS_SIG_ACTIVE_HIGH ;
 int OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DISPC ;
 int OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DISPC ;
 int OMAP_DSS_CLK_SRC_FCK ;
 scalar_t__ OMAP_DSS_DSI_CMD_MODE ;
 int dsi_configure_dispc_clocks (struct platform_device*) ;
 int dsi_framedone_irq_callback ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_get_pixel_size (int ) ;
 int dss_mgr_register_framedone_handler (struct omap_overlay_manager*,int ,struct platform_device*) ;
 int dss_mgr_set_lcd_config (struct omap_overlay_manager*,TYPE_2__*) ;
 int dss_mgr_set_timings (struct omap_overlay_manager*,TYPE_1__*) ;
 int dss_mgr_unregister_framedone_handler (struct omap_overlay_manager*,int ,struct platform_device*) ;
 int dss_select_lcd_clk_source (int ,int ) ;

__attribute__((used)) static int dsi_display_init_dispc(struct platform_device *dsidev,
  struct omap_overlay_manager *mgr)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 int r;

 dss_select_lcd_clk_source(mgr->id, dsi->module_id == 0 ?
   OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DISPC :
   OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DISPC);

 if (dsi->mode == OMAP_DSS_DSI_CMD_MODE) {
  r = dss_mgr_register_framedone_handler(mgr,
    dsi_framedone_irq_callback, dsidev);
  if (r) {
   DSSERR("can't register FRAMEDONE handler\n");
   goto err;
  }

  dsi->mgr_config.stallmode = 1;
  dsi->mgr_config.fifohandcheck = 1;
 } else {
  dsi->mgr_config.stallmode = 0;
  dsi->mgr_config.fifohandcheck = 0;
 }





 dsi->timings.interlace = 0;
 dsi->timings.hsync_level = OMAPDSS_SIG_ACTIVE_HIGH;
 dsi->timings.vsync_level = OMAPDSS_SIG_ACTIVE_HIGH;
 dsi->timings.data_pclk_edge = OMAPDSS_DRIVE_SIG_RISING_EDGE;
 dsi->timings.de_level = OMAPDSS_SIG_ACTIVE_HIGH;
 dsi->timings.sync_pclk_edge = OMAPDSS_DRIVE_SIG_FALLING_EDGE;

 dss_mgr_set_timings(mgr, &dsi->timings);

 r = dsi_configure_dispc_clocks(dsidev);
 if (r)
  goto err1;

 dsi->mgr_config.io_pad_mode = DSS_IO_PAD_MODE_BYPASS;
 dsi->mgr_config.video_port_width =
   dsi_get_pixel_size(dsi->pix_fmt);
 dsi->mgr_config.lcden_sig_polarity = 0;

 dss_mgr_set_lcd_config(mgr, &dsi->mgr_config);

 return 0;
err1:
 if (dsi->mode == OMAP_DSS_DSI_CMD_MODE)
  dss_mgr_unregister_framedone_handler(mgr,
    dsi_framedone_irq_callback, dsidev);
err:
 dss_select_lcd_clk_source(mgr->id, OMAP_DSS_CLK_SRC_FCK);
 return r;
}
