
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_v4l2_buffer {int vb2_buf; scalar_t__ sequence; } ;
struct hantro_dev {int m2m_dev; int clocks; TYPE_1__* variant; int dev; } ;
struct TYPE_4__ {int m2m_ctx; } ;
struct hantro_ctx {int (* buf_finish ) (struct hantro_ctx*,int *,unsigned int) ;TYPE_2__ fh; int sequence_cap; int sequence_out; } ;
typedef enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;
struct TYPE_3__ {int num_clocks; } ;


 int VB2_BUF_STATE_ERROR ;
 scalar_t__ WARN_ON (int) ;
 int clk_bulk_disable (int ,int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int stub1 (struct hantro_ctx*,int *,unsigned int) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 int v4l2_m2m_job_finish (int ,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;

__attribute__((used)) static void hantro_job_finish(struct hantro_dev *vpu,
         struct hantro_ctx *ctx,
         unsigned int bytesused,
         enum vb2_buffer_state result)
{
 struct vb2_v4l2_buffer *src, *dst;
 int ret;

 pm_runtime_mark_last_busy(vpu->dev);
 pm_runtime_put_autosuspend(vpu->dev);
 clk_bulk_disable(vpu->variant->num_clocks, vpu->clocks);

 src = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
 dst = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);

 if (WARN_ON(!src))
  return;
 if (WARN_ON(!dst))
  return;

 src->sequence = ctx->sequence_out++;
 dst->sequence = ctx->sequence_cap++;

 ret = ctx->buf_finish(ctx, &dst->vb2_buf, bytesused);
 if (ret)
  result = VB2_BUF_STATE_ERROR;

 v4l2_m2m_buf_done(src, result);
 v4l2_m2m_buf_done(dst, result);

 v4l2_m2m_job_finish(vpu->m2m_dev, ctx->fh.m2m_ctx);
}
