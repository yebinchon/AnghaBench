
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int req; } ;
struct TYPE_6__ {TYPE_2__ req_obj; } ;
struct vb2_v4l2_buffer {TYPE_3__ vb2_buf; } ;
struct vb2_queue {int type; } ;
struct TYPE_4__ {int m2m_ctx; } ;
struct cedrus_ctx {int hdl; TYPE_1__ fh; } ;


 scalar_t__ V4L2_TYPE_IS_OUTPUT (int ) ;
 int v4l2_ctrl_request_complete (int ,int *) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;
 struct cedrus_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static void cedrus_queue_cleanup(struct vb2_queue *vq, u32 state)
{
 struct cedrus_ctx *ctx = vb2_get_drv_priv(vq);
 struct vb2_v4l2_buffer *vbuf;

 for (;;) {
  if (V4L2_TYPE_IS_OUTPUT(vq->type))
   vbuf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
  else
   vbuf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);

  if (!vbuf)
   return;

  v4l2_ctrl_request_complete(vbuf->vb2_buf.req_obj.req,
        &ctx->hdl);
  v4l2_m2m_buf_done(vbuf, state);
 }
}
