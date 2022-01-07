
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct platform_device {int dummy; } ;
struct omap_overlay_manager {int dummy; } ;
struct omap_dss_device {struct omap_overlay_manager* manager; } ;
struct TYPE_2__ {int x_res; } ;
struct dsi_data {int pix_fmt; scalar_t__ mode; TYPE_1__ timings; struct omap_dss_device output; } ;


 int DIV_ROUND_UP (int,int) ;
 int DSI_VC_CTRL (int) ;
 int DSSERR (char*) ;
 int EINVAL ;
 int ENODEV ;
 int MIPI_DSI_PACKED_PIXEL_STREAM_16 ;
 int MIPI_DSI_PACKED_PIXEL_STREAM_18 ;
 int MIPI_DSI_PACKED_PIXEL_STREAM_24 ;
 int MIPI_DSI_PIXEL_STREAM_3BYTE_18 ;




 scalar_t__ OMAP_DSS_DSI_VIDEO_MODE ;
 int REG_FLD_MOD (struct platform_device*,int ,int,int,int) ;
 int dsi_display_init_dispc (struct platform_device*,struct omap_overlay_manager*) ;
 int dsi_display_uninit_dispc (struct platform_device*,struct omap_overlay_manager*) ;
 struct platform_device* dsi_get_dsidev_from_dssdev (struct omap_dss_device*) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_get_pixel_size (int) ;
 int dsi_if_enable (struct platform_device*,int) ;
 int dsi_vc_enable (struct platform_device*,int,int) ;
 int dsi_vc_write_long_header (struct platform_device*,int,int ,int ,int ) ;
 int dss_mgr_enable (struct omap_overlay_manager*) ;

__attribute__((used)) static int dsi_enable_video_output(struct omap_dss_device *dssdev, int channel)
{
 struct platform_device *dsidev = dsi_get_dsidev_from_dssdev(dssdev);
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 struct omap_overlay_manager *mgr = dsi->output.manager;
 int bpp = dsi_get_pixel_size(dsi->pix_fmt);
 struct omap_dss_device *out = &dsi->output;
 u8 data_type;
 u16 word_count;
 int r;

 if (out->manager == ((void*)0)) {
  DSSERR("failed to enable display: no output/manager\n");
  return -ENODEV;
 }

 r = dsi_display_init_dispc(dsidev, mgr);
 if (r)
  goto err_init_dispc;

 if (dsi->mode == OMAP_DSS_DSI_VIDEO_MODE) {
  switch (dsi->pix_fmt) {
  case 128:
   data_type = MIPI_DSI_PACKED_PIXEL_STREAM_24;
   break;
  case 130:
   data_type = MIPI_DSI_PIXEL_STREAM_3BYTE_18;
   break;
  case 129:
   data_type = MIPI_DSI_PACKED_PIXEL_STREAM_18;
   break;
  case 131:
   data_type = MIPI_DSI_PACKED_PIXEL_STREAM_16;
   break;
  default:
   r = -EINVAL;
   goto err_pix_fmt;
  }

  dsi_if_enable(dsidev, 0);
  dsi_vc_enable(dsidev, channel, 0);


  REG_FLD_MOD(dsidev, DSI_VC_CTRL(channel), 1, 4, 4);

  word_count = DIV_ROUND_UP(dsi->timings.x_res * bpp, 8);

  dsi_vc_write_long_header(dsidev, channel, data_type,
    word_count, 0);

  dsi_vc_enable(dsidev, channel, 1);
  dsi_if_enable(dsidev, 1);
 }

 r = dss_mgr_enable(mgr);
 if (r)
  goto err_mgr_enable;

 return 0;

err_mgr_enable:
 if (dsi->mode == OMAP_DSS_DSI_VIDEO_MODE) {
  dsi_if_enable(dsidev, 0);
  dsi_vc_enable(dsidev, channel, 0);
 }
err_pix_fmt:
 dsi_display_uninit_dispc(dsidev, mgr);
err_init_dispc:
 return r;
}
