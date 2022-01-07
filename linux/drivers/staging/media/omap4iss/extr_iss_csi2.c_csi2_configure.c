
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct v4l2_subdev {struct iss_v4l2_subdevs_group* host_priv; } ;
struct media_pad {int entity; } ;
struct TYPE_7__ {int crc; int vpclk_div; } ;
struct TYPE_8__ {TYPE_1__ csi2; } ;
struct iss_v4l2_subdevs_group {TYPE_2__ bus; } ;
struct iss_csi2_timing_cfg {int force_rx_mode; int stop_state_16x; int stop_state_4x; int stop_state_counter; } ;
struct TYPE_11__ {int ecc_enable; int frame_mode; int vp_out_ctrl; scalar_t__ if_enable; } ;
struct TYPE_10__ {scalar_t__ bpl_padding; scalar_t__ bpl_value; } ;
struct iss_csi2_device {int dpcm_decompress; TYPE_6__* contexts; TYPE_5__ ctrl; TYPE_4__ video_out; TYPE_3__* formats; scalar_t__ frame_skip; int * pads; struct iss_csi2_timing_cfg* timing; } ;
struct TYPE_12__ {int eof_enabled; int eol_enabled; scalar_t__ data_offset; int format_id; scalar_t__ enabled; } ;
struct TYPE_9__ {scalar_t__ code; } ;


 size_t CSI2_PAD_SINK ;
 size_t CSI2_PAD_SOURCE ;
 int EBUSY ;
 int ISS_CSI2_FRAME_IMMEDIATE ;
 int csi2_ctx_config (struct iss_csi2_device*,TYPE_6__*) ;
 int csi2_ctx_map_format (struct iss_csi2_device*) ;
 int csi2_irq_complexio1_set (struct iss_csi2_device*,int) ;
 int csi2_irq_ctx_set (struct iss_csi2_device*,int) ;
 int csi2_irq_status_set (struct iss_csi2_device*,int) ;
 int csi2_recv_config (struct iss_csi2_device*,TYPE_5__*) ;
 int csi2_timing_config (struct iss_csi2_device*,struct iss_csi2_timing_cfg*) ;
 int g_skip_frames ;
 struct media_pad* media_entity_remote_pad (int *) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (int ) ;
 int v4l2_subdev_call (struct v4l2_subdev*,struct v4l2_subdev*,int ,scalar_t__*) ;

__attribute__((used)) static int csi2_configure(struct iss_csi2_device *csi2)
{
 const struct iss_v4l2_subdevs_group *pdata;
 struct iss_csi2_timing_cfg *timing = &csi2->timing[0];
 struct v4l2_subdev *sensor;
 struct media_pad *pad;







 if (csi2->contexts[0].enabled || csi2->ctrl.if_enable)
  return -EBUSY;

 pad = media_entity_remote_pad(&csi2->pads[CSI2_PAD_SINK]);
 sensor = media_entity_to_v4l2_subdev(pad->entity);
 pdata = sensor->host_priv;

 csi2->frame_skip = 0;
 v4l2_subdev_call(sensor, sensor, g_skip_frames, &csi2->frame_skip);

 csi2->ctrl.vp_out_ctrl = pdata->bus.csi2.vpclk_div;
 csi2->ctrl.frame_mode = ISS_CSI2_FRAME_IMMEDIATE;
 csi2->ctrl.ecc_enable = pdata->bus.csi2.crc;

 timing->force_rx_mode = 1;
 timing->stop_state_16x = 1;
 timing->stop_state_4x = 1;
 timing->stop_state_counter = 0x1ff;






 if (csi2->formats[CSI2_PAD_SINK].code !=
     csi2->formats[CSI2_PAD_SOURCE].code)
  csi2->dpcm_decompress = 1;
 else
  csi2->dpcm_decompress = 0;

 csi2->contexts[0].format_id = csi2_ctx_map_format(csi2);

 if (csi2->video_out.bpl_padding == 0)
  csi2->contexts[0].data_offset = 0;
 else
  csi2->contexts[0].data_offset = csi2->video_out.bpl_value;
 csi2->contexts[0].eof_enabled = 1;
 csi2->contexts[0].eol_enabled = 1;

 csi2_irq_complexio1_set(csi2, 1);
 csi2_irq_ctx_set(csi2, 1);
 csi2_irq_status_set(csi2, 1);


 csi2_timing_config(csi2, timing);
 csi2_recv_config(csi2, &csi2->ctrl);
 csi2_ctx_config(csi2, &csi2->contexts[0]);

 return 0;
}
