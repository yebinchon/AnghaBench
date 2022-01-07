
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_v4l2_buffer {scalar_t__ sequence; } ;
struct ipu_image_convert_run {scalar_t__ status; } ;
struct ipu_csc_scaler_priv {int m2m_dev; } ;
struct TYPE_2__ {int m2m_ctx; } ;
struct ipu_csc_scaler_ctx {TYPE_1__ fh; int sequence; struct ipu_csc_scaler_priv* priv; } ;


 int VB2_BUF_STATE_DONE ;
 int VB2_BUF_STATE_ERROR ;
 int kfree (struct ipu_image_convert_run*) ;
 int v4l2_m2m_buf_copy_metadata (struct vb2_v4l2_buffer*,struct vb2_v4l2_buffer*,int) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 int v4l2_m2m_job_finish (int ,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;

__attribute__((used)) static void ipu_ic_pp_complete(struct ipu_image_convert_run *run, void *_ctx)
{
 struct ipu_csc_scaler_ctx *ctx = _ctx;
 struct ipu_csc_scaler_priv *priv = ctx->priv;
 struct vb2_v4l2_buffer *src_buf, *dst_buf;

 src_buf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
 dst_buf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);

 v4l2_m2m_buf_copy_metadata(src_buf, dst_buf, 1);

 src_buf->sequence = ctx->sequence++;
 dst_buf->sequence = src_buf->sequence;

 v4l2_m2m_buf_done(src_buf, run->status ? VB2_BUF_STATE_ERROR :
       VB2_BUF_STATE_DONE);
 v4l2_m2m_buf_done(dst_buf, run->status ? VB2_BUF_STATE_ERROR :
       VB2_BUF_STATE_DONE);

 v4l2_m2m_job_finish(priv->m2m_dev, ctx->fh.m2m_ctx);
 kfree(run);
}
