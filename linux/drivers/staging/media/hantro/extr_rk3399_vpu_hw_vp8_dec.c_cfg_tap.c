
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_ctrl_vp8_frame_header {int version; } ;
struct hantro_dev {int dummy; } ;
struct hantro_ctx {struct hantro_dev* dev; } ;
struct TYPE_3__ {scalar_t__ base; } ;


 int hantro_reg_write (struct hantro_dev*,TYPE_1__*,int ) ;
 int ** hantro_vp8_dec_mc_filter ;
 TYPE_1__** vp8_dec_pred_bc_tap ;

__attribute__((used)) static void cfg_tap(struct hantro_ctx *ctx,
      const struct v4l2_ctrl_vp8_frame_header *hdr)
{
 struct hantro_dev *vpu = ctx->dev;
 int i, j;

 if ((hdr->version & 0x03) != 0)
  return;

 for (i = 0; i < 8; i++) {
  for (j = 0; j < 6; j++) {
   if (vp8_dec_pred_bc_tap[i][j].base != 0)
    hantro_reg_write(vpu,
       &vp8_dec_pred_bc_tap[i][j],
       hantro_vp8_dec_mc_filter[i][j]);
  }
 }
}
