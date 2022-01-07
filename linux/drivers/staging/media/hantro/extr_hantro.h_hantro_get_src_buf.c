
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_v4l2_buffer {int dummy; } ;
struct TYPE_2__ {int m2m_ctx; } ;
struct hantro_ctx {TYPE_1__ fh; } ;


 struct vb2_v4l2_buffer* v4l2_m2m_next_src_buf (int ) ;

__attribute__((used)) static inline struct vb2_v4l2_buffer *
hantro_get_src_buf(struct hantro_ctx *ctx)
{
 return v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
}
