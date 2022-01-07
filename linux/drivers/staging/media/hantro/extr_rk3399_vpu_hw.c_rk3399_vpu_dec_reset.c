
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hantro_dev {int dummy; } ;
struct hantro_ctx {struct hantro_dev* dev; } ;


 int VDPU_REG_EN_FLAGS ;
 int VDPU_REG_INTERRUPT ;
 int VDPU_REG_INTERRUPT_DEC_IRQ_DIS ;
 int VDPU_REG_SOFT_RESET ;
 int vdpu_write (struct hantro_dev*,int,int ) ;

__attribute__((used)) static void rk3399_vpu_dec_reset(struct hantro_ctx *ctx)
{
 struct hantro_dev *vpu = ctx->dev;

 vdpu_write(vpu, VDPU_REG_INTERRUPT_DEC_IRQ_DIS, VDPU_REG_INTERRUPT);
 vdpu_write(vpu, 0, VDPU_REG_EN_FLAGS);
 vdpu_write(vpu, 1, VDPU_REG_SOFT_RESET);
}
