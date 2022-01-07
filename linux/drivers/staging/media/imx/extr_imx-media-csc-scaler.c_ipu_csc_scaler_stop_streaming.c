
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_queue {scalar_t__ type; } ;
struct TYPE_2__ {int m2m_ctx; } ;
struct ipu_csc_scaler_ctx {TYPE_1__ fh; scalar_t__ sequence; int * icc; } ;


 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int VB2_BUF_STATE_ERROR ;
 int ipu_image_convert_unprepare (int *) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;
 struct ipu_csc_scaler_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static void ipu_csc_scaler_stop_streaming(struct vb2_queue *q)
{
 struct ipu_csc_scaler_ctx *ctx = vb2_get_drv_priv(q);
 struct vb2_v4l2_buffer *buf;

 if (ctx->icc) {
  ipu_image_convert_unprepare(ctx->icc);
  ctx->icc = ((void*)0);
 }

 ctx->sequence = 0;

 if (q->type == V4L2_BUF_TYPE_VIDEO_OUTPUT) {
  while ((buf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx)))
   v4l2_m2m_buf_done(buf, VB2_BUF_STATE_ERROR);
 } else {
  while ((buf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx)))
   v4l2_m2m_buf_done(buf, VB2_BUF_STATE_ERROR);
 }
}
