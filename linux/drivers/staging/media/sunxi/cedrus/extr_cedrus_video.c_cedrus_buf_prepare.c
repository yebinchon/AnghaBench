
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int type; } ;
struct vb2_buffer {struct vb2_queue* vb2_queue; } ;
struct v4l2_pix_format {scalar_t__ sizeimage; } ;
struct cedrus_ctx {struct v4l2_pix_format dst_fmt; struct v4l2_pix_format src_fmt; } ;


 int EINVAL ;
 scalar_t__ V4L2_TYPE_IS_OUTPUT (int ) ;
 struct cedrus_ctx* vb2_get_drv_priv (struct vb2_queue*) ;
 scalar_t__ vb2_plane_size (struct vb2_buffer*,int ) ;
 int vb2_set_plane_payload (struct vb2_buffer*,int ,scalar_t__) ;

__attribute__((used)) static int cedrus_buf_prepare(struct vb2_buffer *vb)
{
 struct vb2_queue *vq = vb->vb2_queue;
 struct cedrus_ctx *ctx = vb2_get_drv_priv(vq);
 struct v4l2_pix_format *pix_fmt;

 if (V4L2_TYPE_IS_OUTPUT(vq->type))
  pix_fmt = &ctx->src_fmt;
 else
  pix_fmt = &ctx->dst_fmt;

 if (vb2_plane_size(vb, 0) < pix_fmt->sizeimage)
  return -EINVAL;

 vb2_set_plane_payload(vb, 0, pix_fmt->sizeimage);

 return 0;
}
