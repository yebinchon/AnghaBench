
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_ctrl_mpeg2_quantization {int dummy; } ;
struct hantro_dev {int dummy; } ;
struct TYPE_3__ {int dma; int cpu; } ;
struct TYPE_4__ {TYPE_1__ qtable; } ;
struct hantro_ctx {TYPE_2__ mpeg2_dec; } ;


 int V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION ;
 int VDPU_REG_QTABLE_BASE ;
 struct v4l2_ctrl_mpeg2_quantization* hantro_get_ctrl (struct hantro_ctx*,int ) ;
 int hantro_mpeg2_dec_copy_qtable (int ,struct v4l2_ctrl_mpeg2_quantization*) ;
 int vdpu_write_relaxed (struct hantro_dev*,int ,int ) ;

__attribute__((used)) static void
rk3399_vpu_mpeg2_dec_set_quantization(struct hantro_dev *vpu,
          struct hantro_ctx *ctx)
{
 struct v4l2_ctrl_mpeg2_quantization *quantization;

 quantization = hantro_get_ctrl(ctx,
           V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION);
 hantro_mpeg2_dec_copy_qtable(ctx->mpeg2_dec.qtable.cpu, quantization);
 vdpu_write_relaxed(vpu, ctx->mpeg2_dec.qtable.dma,
      VDPU_REG_QTABLE_BASE);
}
