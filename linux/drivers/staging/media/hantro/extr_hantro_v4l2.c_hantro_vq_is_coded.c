
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int type; } ;
struct hantro_ctx {int dummy; } ;


 scalar_t__ V4L2_TYPE_IS_OUTPUT (int ) ;
 scalar_t__ hantro_is_encoder_ctx (struct hantro_ctx*) ;
 struct hantro_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static bool hantro_vq_is_coded(struct vb2_queue *q)
{
 struct hantro_ctx *ctx = vb2_get_drv_priv(q);

 return hantro_is_encoder_ctx(ctx) != V4L2_TYPE_IS_OUTPUT(q->type);
}
