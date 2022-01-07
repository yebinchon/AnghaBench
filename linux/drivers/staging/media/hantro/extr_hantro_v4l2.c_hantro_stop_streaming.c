
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int type; } ;
struct hantro_ctx {TYPE_1__* codec_ops; } ;
struct TYPE_2__ {int (* exit ) (struct hantro_ctx*) ;} ;


 scalar_t__ V4L2_TYPE_IS_OUTPUT (int ) ;
 int hantro_return_bufs (struct vb2_queue*,int ) ;
 scalar_t__ hantro_vq_is_coded (struct vb2_queue*) ;
 int stub1 (struct hantro_ctx*) ;
 int v4l2_m2m_dst_buf_remove ;
 int v4l2_m2m_src_buf_remove ;
 struct hantro_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static void hantro_stop_streaming(struct vb2_queue *q)
{
 struct hantro_ctx *ctx = vb2_get_drv_priv(q);

 if (hantro_vq_is_coded(q)) {
  if (ctx->codec_ops && ctx->codec_ops->exit)
   ctx->codec_ops->exit(ctx);
 }






 if (V4L2_TYPE_IS_OUTPUT(q->type))
  hantro_return_bufs(q, v4l2_m2m_src_buf_remove);
 else
  hantro_return_bufs(q, v4l2_m2m_dst_buf_remove);
}
