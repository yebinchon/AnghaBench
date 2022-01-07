
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dummy; } ;
struct dsi_data {scalar_t__ mode; int pix_fmt; } ;


 int BUG () ;
 int DSI_CTRL ;
 int DSI_FIFO_SIZE_32 ;
 int EINVAL ;
 int FEAT_DSI_DCS_CMD_CONFIG_VC ;
 int FLD_MOD (int ,int,int,int) ;
 scalar_t__ OMAP_DSS_DSI_VIDEO_MODE ;
 int dsi_config_blanking_modes (struct platform_device*) ;
 int dsi_config_cmd_mode_interleaving (struct platform_device*) ;
 int dsi_config_rx_fifo (struct platform_device*,int ,int ,int ,int ) ;
 int dsi_config_tx_fifo (struct platform_device*,int ,int ,int ,int ) ;
 int dsi_config_vp_num_line_buffers (struct platform_device*) ;
 int dsi_config_vp_sync_events (struct platform_device*) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_get_pixel_size (int ) ;
 int dsi_read_reg (struct platform_device*,int ) ;
 int dsi_set_hs_tx_timeout (struct platform_device*,int,int,int) ;
 int dsi_set_lp_rx_timeout (struct platform_device*,int,int,int) ;
 int dsi_set_stop_state_counter (struct platform_device*,int,int,int) ;
 int dsi_set_ta_timeout (struct platform_device*,int,int,int) ;
 int dsi_vc_initial_config (struct platform_device*,int) ;
 int dsi_write_reg (struct platform_device*,int ,int ) ;
 int dss_has_feature (int ) ;

__attribute__((used)) static int dsi_proto_config(struct platform_device *dsidev)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 u32 r;
 int buswidth = 0;

 dsi_config_tx_fifo(dsidev, DSI_FIFO_SIZE_32,
   DSI_FIFO_SIZE_32,
   DSI_FIFO_SIZE_32,
   DSI_FIFO_SIZE_32);

 dsi_config_rx_fifo(dsidev, DSI_FIFO_SIZE_32,
   DSI_FIFO_SIZE_32,
   DSI_FIFO_SIZE_32,
   DSI_FIFO_SIZE_32);


 dsi_set_stop_state_counter(dsidev, 0x1000, 0, 0);
 dsi_set_ta_timeout(dsidev, 0x1fff, 1, 1);
 dsi_set_lp_rx_timeout(dsidev, 0x1fff, 1, 1);
 dsi_set_hs_tx_timeout(dsidev, 0x1fff, 1, 1);

 switch (dsi_get_pixel_size(dsi->pix_fmt)) {
 case 16:
  buswidth = 0;
  break;
 case 18:
  buswidth = 1;
  break;
 case 24:
  buswidth = 2;
  break;
 default:
  BUG();
  return -EINVAL;
 }

 r = dsi_read_reg(dsidev, DSI_CTRL);
 r = FLD_MOD(r, 1, 1, 1);
 r = FLD_MOD(r, 1, 2, 2);
 r = FLD_MOD(r, 1, 3, 3);
 r = FLD_MOD(r, 1, 4, 4);
 r = FLD_MOD(r, buswidth, 7, 6);
 r = FLD_MOD(r, 0, 8, 8);
 r = FLD_MOD(r, 1, 14, 14);
 r = FLD_MOD(r, 1, 19, 19);
 if (!dss_has_feature(FEAT_DSI_DCS_CMD_CONFIG_VC)) {
  r = FLD_MOD(r, 1, 24, 24);

  r = FLD_MOD(r, 0, 25, 25);
 }

 dsi_write_reg(dsidev, DSI_CTRL, r);

 dsi_config_vp_num_line_buffers(dsidev);

 if (dsi->mode == OMAP_DSS_DSI_VIDEO_MODE) {
  dsi_config_vp_sync_events(dsidev);
  dsi_config_blanking_modes(dsidev);
  dsi_config_cmd_mode_interleaving(dsidev);
 }

 dsi_vc_initial_config(dsidev, 0);
 dsi_vc_initial_config(dsidev, 1);
 dsi_vc_initial_config(dsidev, 2);
 dsi_vc_initial_config(dsidev, 3);

 return 0;
}
