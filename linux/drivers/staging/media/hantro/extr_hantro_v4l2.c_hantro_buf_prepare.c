
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int type; } ;
struct vb2_buffer {struct vb2_queue* vb2_queue; } ;
struct hantro_ctx {int dst_fmt; int vpu_dst_fmt; int src_fmt; int vpu_src_fmt; } ;


 scalar_t__ V4L2_TYPE_IS_OUTPUT (int ) ;
 int hantro_buf_plane_check (struct vb2_buffer*,int ,int *) ;
 struct hantro_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int hantro_buf_prepare(struct vb2_buffer *vb)
{
 struct vb2_queue *vq = vb->vb2_queue;
 struct hantro_ctx *ctx = vb2_get_drv_priv(vq);

 if (V4L2_TYPE_IS_OUTPUT(vq->type))
  return hantro_buf_plane_check(vb, ctx->vpu_src_fmt,
        &ctx->src_fmt);

 return hantro_buf_plane_check(vb, ctx->vpu_dst_fmt, &ctx->dst_fmt);
}
