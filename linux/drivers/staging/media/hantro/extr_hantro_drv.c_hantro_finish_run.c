
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int req; } ;
struct TYPE_5__ {TYPE_1__ req_obj; } ;
struct vb2_v4l2_buffer {TYPE_2__ vb2_buf; } ;
struct hantro_ctx {TYPE_3__* dev; int ctrl_handler; } ;
struct TYPE_6__ {int watchdog_work; } ;


 struct vb2_v4l2_buffer* hantro_get_src_buf (struct hantro_ctx*) ;
 int msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,int ) ;
 int v4l2_ctrl_request_complete (int ,int *) ;

void hantro_finish_run(struct hantro_ctx *ctx)
{
 struct vb2_v4l2_buffer *src_buf;

 src_buf = hantro_get_src_buf(ctx);
 v4l2_ctrl_request_complete(src_buf->vb2_buf.req_obj.req,
       &ctx->ctrl_handler);


 schedule_delayed_work(&ctx->dev->watchdog_work,
         msecs_to_jiffies(2000));
}
