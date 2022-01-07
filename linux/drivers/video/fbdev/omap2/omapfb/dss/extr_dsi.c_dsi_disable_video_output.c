
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct omap_overlay_manager {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {struct omap_overlay_manager* manager; } ;
struct dsi_data {scalar_t__ mode; TYPE_1__ output; } ;


 int DSI_VC_CTRL (int) ;
 scalar_t__ OMAP_DSS_DSI_VIDEO_MODE ;
 int REG_FLD_MOD (struct platform_device*,int ,int ,int,int) ;
 int dsi_display_uninit_dispc (struct platform_device*,struct omap_overlay_manager*) ;
 struct platform_device* dsi_get_dsidev_from_dssdev (struct omap_dss_device*) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_if_enable (struct platform_device*,int) ;
 int dsi_vc_enable (struct platform_device*,int,int) ;
 int dss_mgr_disable (struct omap_overlay_manager*) ;

__attribute__((used)) static void dsi_disable_video_output(struct omap_dss_device *dssdev, int channel)
{
 struct platform_device *dsidev = dsi_get_dsidev_from_dssdev(dssdev);
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 struct omap_overlay_manager *mgr = dsi->output.manager;

 if (dsi->mode == OMAP_DSS_DSI_VIDEO_MODE) {
  dsi_if_enable(dsidev, 0);
  dsi_vc_enable(dsidev, channel, 0);


  REG_FLD_MOD(dsidev, DSI_VC_CTRL(channel), 0, 4, 4);

  dsi_vc_enable(dsidev, channel, 1);
  dsi_if_enable(dsidev, 1);
 }

 dss_mgr_disable(mgr);

 dsi_display_uninit_dispc(dsidev, mgr);
}
