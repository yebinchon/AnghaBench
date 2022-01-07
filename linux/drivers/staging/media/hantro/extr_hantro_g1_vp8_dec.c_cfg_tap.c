
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_ctrl_vp8_frame_header {int version; } ;
struct hantro_reg {int mask; int shift; int base; } ;
struct hantro_dev {int dummy; } ;
struct hantro_ctx {struct hantro_dev* dev; } ;


 int G1_REG_BD_REF_PIC (int) ;
 int hantro_reg_write (struct hantro_dev*,struct hantro_reg*,int) ;
 int** hantro_vp8_dec_mc_filter ;
 struct hantro_reg** vp8_dec_pred_bc_tap ;

__attribute__((used)) static void cfg_tap(struct hantro_ctx *ctx,
      const struct v4l2_ctrl_vp8_frame_header *hdr)
{
 struct hantro_dev *vpu = ctx->dev;
 struct hantro_reg reg;
 u32 val = 0;
 int i, j;

 reg.base = G1_REG_BD_REF_PIC(3);
 reg.mask = 0xf;

 if ((hdr->version & 0x03) != 0)
  return;

 for (i = 0; i < 8; i++) {
  val = (hantro_vp8_dec_mc_filter[i][0] << 2) |
         hantro_vp8_dec_mc_filter[i][5];

  for (j = 0; j < 4; j++)
   hantro_reg_write(vpu, &vp8_dec_pred_bc_tap[i][j],
      hantro_vp8_dec_mc_filter[i][j + 1]);

  switch (i) {
  case 2:
   reg.shift = 8;
   break;
  case 4:
   reg.shift = 4;
   break;
  case 6:
   reg.shift = 0;
   break;
  default:
   continue;
  }

  hantro_reg_write(vpu, &reg, val);
 }
}
