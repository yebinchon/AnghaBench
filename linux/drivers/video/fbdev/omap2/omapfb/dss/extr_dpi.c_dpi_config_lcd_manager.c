
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_overlay_manager {int dummy; } ;
struct omap_dss_device {struct omap_overlay_manager* manager; } ;
struct TYPE_2__ {int stallmode; int fifohandcheck; scalar_t__ lcden_sig_polarity; int video_port_width; int io_pad_mode; } ;
struct dpi_data {TYPE_1__ mgr_config; int data_lines; struct omap_dss_device output; } ;


 int DSS_IO_PAD_MODE_BYPASS ;
 int dss_mgr_set_lcd_config (struct omap_overlay_manager*,TYPE_1__*) ;

__attribute__((used)) static void dpi_config_lcd_manager(struct dpi_data *dpi)
{
 struct omap_dss_device *out = &dpi->output;
 struct omap_overlay_manager *mgr = out->manager;

 dpi->mgr_config.io_pad_mode = DSS_IO_PAD_MODE_BYPASS;

 dpi->mgr_config.stallmode = 0;
 dpi->mgr_config.fifohandcheck = 0;

 dpi->mgr_config.video_port_width = dpi->data_lines;

 dpi->mgr_config.lcden_sig_polarity = 0;

 dss_mgr_set_lcd_config(mgr, &dpi->mgr_config);
}
