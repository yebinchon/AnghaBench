
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef unsigned int u16 ;
struct platform_device {int dummy; } ;
struct omap_overlay_manager {int dummy; } ;
struct TYPE_4__ {unsigned int x_res; unsigned int y_res; } ;
struct TYPE_3__ {struct omap_overlay_manager* manager; } ;
struct dsi_data {unsigned int update_channel; unsigned int line_buffer_size; int te_timer; scalar_t__ te_enabled; TYPE_2__ timings; int framedone_timeout_work; int pix_fmt; TYPE_1__ output; } ;


 int BUG_ON (int) ;
 int DSI_TIMING2 ;
 int DSI_VC_SOURCE_VP ;
 int DSI_VC_TE (unsigned int const) ;
 int DSSDBG (char*,unsigned int,unsigned int) ;
 int FLD_MOD (int ,int,int,int) ;
 int FLD_VAL (unsigned int,int,int ) ;
 int MIPI_DSI_DCS_LONG_WRITE ;
 int REG_FLD_MOD (struct platform_device*,int ,int ,int,int) ;
 int dispc_disable_sidle () ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_get_pixel_size (int ) ;
 int dsi_perf_mark_start (struct platform_device*) ;
 int dsi_vc_config_source (struct platform_device*,unsigned int const,int ) ;
 int dsi_vc_send_bta (struct platform_device*,unsigned int const) ;
 int dsi_vc_write_long_header (struct platform_device*,unsigned int const,int ,unsigned int,int ) ;
 int dsi_write_reg (struct platform_device*,int ,int ) ;
 int dss_mgr_set_timings (struct omap_overlay_manager*,TYPE_2__*) ;
 int dss_mgr_start_update (struct omap_overlay_manager*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,scalar_t__) ;

__attribute__((used)) static void dsi_update_screen_dispc(struct platform_device *dsidev)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 struct omap_overlay_manager *mgr = dsi->output.manager;
 unsigned bytespp;
 unsigned bytespl;
 unsigned bytespf;
 unsigned total_len;
 unsigned packet_payload;
 unsigned packet_len;
 u32 l;
 int r;
 const unsigned channel = dsi->update_channel;
 const unsigned line_buf_size = dsi->line_buffer_size;
 u16 w = dsi->timings.x_res;
 u16 h = dsi->timings.y_res;

 DSSDBG("dsi_update_screen_dispc(%dx%d)\n", w, h);

 dsi_vc_config_source(dsidev, channel, DSI_VC_SOURCE_VP);

 bytespp = dsi_get_pixel_size(dsi->pix_fmt) / 8;
 bytespl = w * bytespp;
 bytespf = bytespl * h;




 if (bytespf < line_buf_size)
  packet_payload = bytespf;
 else
  packet_payload = (line_buf_size) / bytespl * bytespl;

 packet_len = packet_payload + 1;
 total_len = (bytespf / packet_payload) * packet_len;

 if (bytespf % packet_payload)
  total_len += (bytespf % packet_payload) + 1;

 l = FLD_VAL(total_len, 23, 0);
 dsi_write_reg(dsidev, DSI_VC_TE(channel), l);

 dsi_vc_write_long_header(dsidev, channel, MIPI_DSI_DCS_LONG_WRITE,
  packet_len, 0);

 if (dsi->te_enabled)
  l = FLD_MOD(l, 1, 30, 30);
 else
  l = FLD_MOD(l, 1, 31, 31);
 dsi_write_reg(dsidev, DSI_VC_TE(channel), l);







 dispc_disable_sidle();

 dsi_perf_mark_start(dsidev);

 r = schedule_delayed_work(&dsi->framedone_timeout_work,
  msecs_to_jiffies(250));
 BUG_ON(r == 0);

 dss_mgr_set_timings(mgr, &dsi->timings);

 dss_mgr_start_update(mgr);

 if (dsi->te_enabled) {


  REG_FLD_MOD(dsidev, DSI_TIMING2, 0, 15, 15);

  dsi_vc_send_bta(dsidev, channel);




 }
}
