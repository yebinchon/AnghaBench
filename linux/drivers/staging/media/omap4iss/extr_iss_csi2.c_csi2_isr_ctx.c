
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct iss_pipeline {int frame_number; } ;
struct TYPE_2__ {int entity; } ;
struct iss_csi2_device {scalar_t__ frame_skip; int output; int regs1; int iss; TYPE_1__ subdev; int stopping; int wait; } ;
struct iss_csi2_ctx_cfg {unsigned int ctxnum; int frame; int format_id; } ;


 int CSI2_CTX_CTRL2 (unsigned int) ;
 int CSI2_CTX_CTRL2_FRAME_SHIFT ;
 int CSI2_CTX_IRQSTATUS (unsigned int) ;
 int CSI2_CTX_IRQ_FE ;
 int CSI2_CTX_IRQ_FS ;
 int CSI2_OUTPUT_MEMORY ;
 int atomic_add (int,int *) ;
 int atomic_inc (int *) ;
 int csi2_ctx_config (struct iss_csi2_device*,struct iss_csi2_ctx_cfg*) ;
 int csi2_ctx_enable (struct iss_csi2_device*,unsigned int,int) ;
 int csi2_ctx_map_format (struct iss_csi2_device*) ;
 int csi2_isr_buffer (struct iss_csi2_device*) ;
 int iss_reg_read (int ,int ,int ) ;
 int iss_reg_write (int ,int ,int ,int) ;
 scalar_t__ omap4iss_module_sync_is_stopping (int *,int *) ;
 struct iss_pipeline* to_iss_pipeline (int *) ;

__attribute__((used)) static void csi2_isr_ctx(struct iss_csi2_device *csi2,
    struct iss_csi2_ctx_cfg *ctx)
{
 unsigned int n = ctx->ctxnum;
 u32 status;

 status = iss_reg_read(csi2->iss, csi2->regs1, CSI2_CTX_IRQSTATUS(n));
 iss_reg_write(csi2->iss, csi2->regs1, CSI2_CTX_IRQSTATUS(n), status);

 if (omap4iss_module_sync_is_stopping(&csi2->wait, &csi2->stopping))
  return;


 if (status & CSI2_CTX_IRQ_FS) {
  struct iss_pipeline *pipe =
         to_iss_pipeline(&csi2->subdev.entity);
  u16 frame;
  u16 delta;

  frame = iss_reg_read(csi2->iss, csi2->regs1,
         CSI2_CTX_CTRL2(ctx->ctxnum))
        >> CSI2_CTX_CTRL2_FRAME_SHIFT;

  if (frame == 0) {




   atomic_inc(&pipe->frame_number);
  } else {







   delta = frame - ctx->frame;
   if (frame < ctx->frame)
    delta--;
   ctx->frame = frame;

   atomic_add(delta, &pipe->frame_number);
  }
 }

 if (!(status & CSI2_CTX_IRQ_FE))
  return;
 if (csi2->frame_skip) {
  csi2->frame_skip--;
  if (csi2->frame_skip == 0) {
   ctx->format_id = csi2_ctx_map_format(csi2);
   csi2_ctx_config(csi2, ctx);
   csi2_ctx_enable(csi2, n, 1);
  }
  return;
 }

 if (csi2->output & CSI2_OUTPUT_MEMORY)
  csi2_isr_buffer(csi2);
}
