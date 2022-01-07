
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int req; } ;
struct TYPE_4__ {TYPE_1__ req_obj; } ;
struct vb2_v4l2_buffer {TYPE_2__ vb2_buf; } ;
struct hantro_ctx {int ctrl_handler; } ;


 struct vb2_v4l2_buffer* hantro_get_src_buf (struct hantro_ctx*) ;
 int v4l2_ctrl_request_setup (int ,int *) ;

void hantro_prepare_run(struct hantro_ctx *ctx)
{
 struct vb2_v4l2_buffer *src_buf;

 src_buf = hantro_get_src_buf(ctx);
 v4l2_ctrl_request_setup(src_buf->vb2_buf.req_obj.req,
    &ctx->ctrl_handler);
}
