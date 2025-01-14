
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct omap_overlay_manager {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_6__ {int stallmode; int fifohandcheck; int video_port_width; int lcden_sig_polarity; int io_pad_mode; } ;
struct TYPE_4__ {struct omap_overlay_manager* manager; } ;
struct TYPE_5__ {TYPE_3__ mgr_config; TYPE_1__ output; } ;


 int DSS_IO_PAD_MODE_BYPASS ;
 int dss_mgr_set_lcd_config (struct omap_overlay_manager*,TYPE_3__*) ;
 TYPE_2__ sdi ;

__attribute__((used)) static void sdi_config_lcd_manager(struct omap_dss_device *dssdev)
{
 struct omap_overlay_manager *mgr = sdi.output.manager;

 sdi.mgr_config.io_pad_mode = DSS_IO_PAD_MODE_BYPASS;

 sdi.mgr_config.stallmode = 0;
 sdi.mgr_config.fifohandcheck = 0;

 sdi.mgr_config.video_port_width = 24;
 sdi.mgr_config.lcden_sig_polarity = 1;

 dss_mgr_set_lcd_config(mgr, &sdi.mgr_config);
}
