
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {void* p; } ;
struct v4l2_ctrl {TYPE_1__ p_cur; } ;
struct hantro_ctx {int ctrl_handler; } ;


 struct v4l2_ctrl* v4l2_ctrl_find (int *,int ) ;

void *hantro_get_ctrl(struct hantro_ctx *ctx, u32 id)
{
 struct v4l2_ctrl *ctrl;

 ctrl = v4l2_ctrl_find(&ctx->ctrl_handler, id);
 return ctrl ? ctrl->p_cur.p : ((void*)0);
}
