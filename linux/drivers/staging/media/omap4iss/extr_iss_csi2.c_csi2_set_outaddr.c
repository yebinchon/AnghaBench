
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct iss_csi2_device {int regs1; int iss; struct iss_csi2_ctx_cfg* contexts; } ;
struct iss_csi2_ctx_cfg {void* pong_addr; int ctxnum; void* ping_addr; } ;


 int CSI2_CTX_PING_ADDR (int ) ;
 int CSI2_CTX_PONG_ADDR (int ) ;
 int iss_reg_write (int ,int ,int ,void*) ;

__attribute__((used)) static void csi2_set_outaddr(struct iss_csi2_device *csi2, u32 addr)
{
 struct iss_csi2_ctx_cfg *ctx = &csi2->contexts[0];

 ctx->ping_addr = addr;
 ctx->pong_addr = addr;
 iss_reg_write(csi2->iss, csi2->regs1, CSI2_CTX_PING_ADDR(ctx->ctxnum),
        ctx->ping_addr);
 iss_reg_write(csi2->iss, csi2->regs1, CSI2_CTX_PONG_ADDR(ctx->ctxnum),
        ctx->pong_addr);
}
