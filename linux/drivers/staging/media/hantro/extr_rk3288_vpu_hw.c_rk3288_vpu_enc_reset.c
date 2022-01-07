
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hantro_dev {int dummy; } ;
struct hantro_ctx {struct hantro_dev* dev; } ;


 int H1_REG_AXI_CTRL ;
 int H1_REG_ENC_CTRL ;
 int H1_REG_INTERRUPT ;
 int H1_REG_INTERRUPT_DIS_BIT ;
 int vepu_write (struct hantro_dev*,int ,int ) ;

__attribute__((used)) static void rk3288_vpu_enc_reset(struct hantro_ctx *ctx)
{
 struct hantro_dev *vpu = ctx->dev;

 vepu_write(vpu, H1_REG_INTERRUPT_DIS_BIT, H1_REG_INTERRUPT);
 vepu_write(vpu, 0, H1_REG_ENC_CTRL);
 vepu_write(vpu, 0, H1_REG_AXI_CTRL);
}
