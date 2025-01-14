
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_v4l2_buffer {int dummy; } ;
struct cedrus_dev {int v4l2_dev; TYPE_1__** dec_ops; int m2m_dev; } ;
struct TYPE_6__ {int m2m_ctx; } ;
struct cedrus_ctx {size_t current_codec; TYPE_3__ fh; TYPE_2__* dev; } ;
typedef int irqreturn_t ;
typedef enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;
typedef enum cedrus_irq_status { ____Placeholder_cedrus_irq_status } cedrus_irq_status ;
struct TYPE_5__ {int m2m_dev; } ;
struct TYPE_4__ {int (* irq_status ) (struct cedrus_ctx*) ;int (* irq_clear ) (struct cedrus_ctx*) ;int (* irq_disable ) (struct cedrus_ctx*) ;} ;


 int CEDRUS_IRQ_ERROR ;
 int CEDRUS_IRQ_NONE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int VB2_BUF_STATE_DONE ;
 int VB2_BUF_STATE_ERROR ;
 int stub1 (struct cedrus_ctx*) ;
 int stub2 (struct cedrus_ctx*) ;
 int stub3 (struct cedrus_ctx*) ;
 int v4l2_err (int *,char*) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 struct cedrus_ctx* v4l2_m2m_get_curr_priv (int ) ;
 int v4l2_m2m_job_finish (int ,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;

__attribute__((used)) static irqreturn_t cedrus_irq(int irq, void *data)
{
 struct cedrus_dev *dev = data;
 struct cedrus_ctx *ctx;
 struct vb2_v4l2_buffer *src_buf, *dst_buf;
 enum vb2_buffer_state state;
 enum cedrus_irq_status status;

 ctx = v4l2_m2m_get_curr_priv(dev->m2m_dev);
 if (!ctx) {
  v4l2_err(&dev->v4l2_dev,
    "Instance released before the end of transaction\n");
  return IRQ_NONE;
 }

 status = dev->dec_ops[ctx->current_codec]->irq_status(ctx);
 if (status == CEDRUS_IRQ_NONE)
  return IRQ_NONE;

 dev->dec_ops[ctx->current_codec]->irq_disable(ctx);
 dev->dec_ops[ctx->current_codec]->irq_clear(ctx);

 src_buf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
 dst_buf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);

 if (!src_buf || !dst_buf) {
  v4l2_err(&dev->v4l2_dev,
    "Missing source and/or destination buffers\n");
  return IRQ_HANDLED;
 }

 if (status == CEDRUS_IRQ_ERROR)
  state = VB2_BUF_STATE_ERROR;
 else
  state = VB2_BUF_STATE_DONE;

 v4l2_m2m_buf_done(src_buf, state);
 v4l2_m2m_buf_done(dst_buf, state);

 v4l2_m2m_job_finish(ctx->dev->m2m_dev, ctx->fh.m2m_ctx);

 return IRQ_HANDLED;
}
