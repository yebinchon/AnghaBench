
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct v4l2_ctrl {int dummy; } ;
struct cedrus_dev {int v4l2_dev; } ;
struct TYPE_3__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct cedrus_ctx {TYPE_1__ fh; struct v4l2_ctrl** ctrls; struct v4l2_ctrl_handler hdl; } ;
typedef int ctrl ;
struct TYPE_4__ {int cfg; } ;


 int CEDRUS_CONTROLS_COUNT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_2__* cedrus_controls ;
 int kfree (struct v4l2_ctrl**) ;
 struct v4l2_ctrl** kzalloc (unsigned int,int ) ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_handler_setup (struct v4l2_ctrl_handler*) ;
 struct v4l2_ctrl* v4l2_ctrl_new_custom (struct v4l2_ctrl_handler*,int *,int *) ;
 int v4l2_err (int *,char*) ;

__attribute__((used)) static int cedrus_init_ctrls(struct cedrus_dev *dev, struct cedrus_ctx *ctx)
{
 struct v4l2_ctrl_handler *hdl = &ctx->hdl;
 struct v4l2_ctrl *ctrl;
 unsigned int ctrl_size;
 unsigned int i;

 v4l2_ctrl_handler_init(hdl, CEDRUS_CONTROLS_COUNT);
 if (hdl->error) {
  v4l2_err(&dev->v4l2_dev,
    "Failed to initialize control handler\n");
  return hdl->error;
 }

 ctrl_size = sizeof(ctrl) * CEDRUS_CONTROLS_COUNT + 1;

 ctx->ctrls = kzalloc(ctrl_size, GFP_KERNEL);
 if (!ctx->ctrls)
  return -ENOMEM;

 for (i = 0; i < CEDRUS_CONTROLS_COUNT; i++) {
  ctrl = v4l2_ctrl_new_custom(hdl, &cedrus_controls[i].cfg,
         ((void*)0));
  if (hdl->error) {
   v4l2_err(&dev->v4l2_dev,
     "Failed to create new custom control\n");

   v4l2_ctrl_handler_free(hdl);
   kfree(ctx->ctrls);
   return hdl->error;
  }

  ctx->ctrls[i] = ctrl;
 }

 ctx->fh.ctrl_handler = hdl;
 v4l2_ctrl_handler_setup(hdl);

 return 0;
}
