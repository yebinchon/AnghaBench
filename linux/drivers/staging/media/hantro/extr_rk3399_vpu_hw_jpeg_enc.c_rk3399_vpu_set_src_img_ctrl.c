
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_pix_format_mplane {int width; } ;
struct hantro_dev {int dummy; } ;
struct hantro_ctx {TYPE_1__* vpu_src_fmt; struct v4l2_pix_format_mplane src_fmt; } ;
struct TYPE_2__ {int enc_fmt; } ;


 int VEPU_REG_ENC_CTRL1 ;
 int VEPU_REG_ENC_OVER_FILL_STRM_OFFSET ;
 int VEPU_REG_INPUT_LUMA_INFO ;
 int VEPU_REG_IN_IMG_CTRL_FMT (int ) ;
 int VEPU_REG_IN_IMG_CTRL_OVRFLB (int ) ;
 int VEPU_REG_IN_IMG_CTRL_OVRFLR_D4 (int ) ;
 int VEPU_REG_IN_IMG_CTRL_ROW_LEN (int ) ;
 int vepu_write_relaxed (struct hantro_dev*,int,int ) ;

__attribute__((used)) static void rk3399_vpu_set_src_img_ctrl(struct hantro_dev *vpu,
     struct hantro_ctx *ctx)
{
 struct v4l2_pix_format_mplane *pix_fmt = &ctx->src_fmt;
 u32 reg;





 reg = VEPU_REG_IN_IMG_CTRL_ROW_LEN(pix_fmt->width);
 vepu_write_relaxed(vpu, reg, VEPU_REG_INPUT_LUMA_INFO);

 reg = VEPU_REG_IN_IMG_CTRL_OVRFLR_D4(0) |
       VEPU_REG_IN_IMG_CTRL_OVRFLB(0);






 vepu_write_relaxed(vpu, reg, VEPU_REG_ENC_OVER_FILL_STRM_OFFSET);

 reg = VEPU_REG_IN_IMG_CTRL_FMT(ctx->vpu_src_fmt->enc_fmt);
 vepu_write_relaxed(vpu, reg, VEPU_REG_ENC_CTRL1);
}
