
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct hantro_dev {int dummy; } ;
struct TYPE_8__ {int error; } ;
struct hantro_ctx {TYPE_1__ ctrl_handler; } ;
struct TYPE_9__ {int id; } ;
struct TYPE_10__ {int codec; TYPE_2__ cfg; } ;


 int ARRAY_SIZE (TYPE_6__*) ;
 TYPE_6__* controls ;
 int v4l2_ctrl_handler_free (TYPE_1__*) ;
 int v4l2_ctrl_handler_init (TYPE_1__*,int) ;
 int v4l2_ctrl_handler_setup (TYPE_1__*) ;
 int v4l2_ctrl_new_custom (TYPE_1__*,TYPE_2__*,int *) ;
 int vpu_err (char*,int ,int) ;

__attribute__((used)) static int hantro_ctrls_setup(struct hantro_dev *vpu,
         struct hantro_ctx *ctx,
         int allowed_codecs)
{
 int i, num_ctrls = ARRAY_SIZE(controls);

 v4l2_ctrl_handler_init(&ctx->ctrl_handler, num_ctrls);

 for (i = 0; i < num_ctrls; i++) {
  if (!(allowed_codecs & controls[i].codec))
   continue;

  v4l2_ctrl_new_custom(&ctx->ctrl_handler,
         &controls[i].cfg, ((void*)0));
  if (ctx->ctrl_handler.error) {
   vpu_err("Adding control (%d) failed %d\n",
    controls[i].cfg.id,
    ctx->ctrl_handler.error);
   v4l2_ctrl_handler_free(&ctx->ctrl_handler);
   return ctx->ctrl_handler.error;
  }
 }
 return v4l2_ctrl_handler_setup(&ctx->ctrl_handler);
}
