
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef unsigned int u32 ;
struct iss_csi2_device {int frame_skip; int output; int regs1; int iss; struct iss_csi2_ctx_cfg* contexts; } ;
struct iss_csi2_ctx_cfg {size_t enabled; } ;


 int CSI2_CTX_CTRL1 (size_t) ;
 unsigned int CSI2_CTX_CTRL1_COUNT_MASK ;
 unsigned int CSI2_CTX_CTRL1_COUNT_SHIFT ;
 unsigned int CSI2_CTX_CTRL1_COUNT_UNLOCK ;
 unsigned int CSI2_CTX_CTRL1_CTX_EN ;
 int CSI2_OUTPUT_MEMORY ;
 unsigned int iss_reg_read (int ,int ,int ) ;
 int iss_reg_write (int ,int ,int ,unsigned int) ;

__attribute__((used)) static void csi2_ctx_enable(struct iss_csi2_device *csi2, u8 ctxnum, u8 enable)
{
 struct iss_csi2_ctx_cfg *ctx = &csi2->contexts[ctxnum];
 u32 reg;

 reg = iss_reg_read(csi2->iss, csi2->regs1, CSI2_CTX_CTRL1(ctxnum));

 if (enable) {
  unsigned int skip = 0;

  if (csi2->frame_skip)
   skip = csi2->frame_skip;
  else if (csi2->output & CSI2_OUTPUT_MEMORY)
   skip = 1;

  reg &= ~CSI2_CTX_CTRL1_COUNT_MASK;
  reg |= CSI2_CTX_CTRL1_COUNT_UNLOCK
      | (skip << CSI2_CTX_CTRL1_COUNT_SHIFT)
      | CSI2_CTX_CTRL1_CTX_EN;
 } else {
  reg &= ~CSI2_CTX_CTRL1_CTX_EN;
 }

 iss_reg_write(csi2->iss, csi2->regs1, CSI2_CTX_CTRL1(ctxnum), reg);
 ctx->enabled = enable;
}
