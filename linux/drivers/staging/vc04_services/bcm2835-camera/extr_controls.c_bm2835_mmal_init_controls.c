
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u64 ;
struct v4l2_ctrl_handler {int error; } ;
struct bm2835_mmal_v4l2_ctrl {int type; int def; int max; int min; int id; int imenu; int step; } ;
struct bm2835_mmal_dev {TYPE_1__** ctrls; } ;
struct TYPE_8__ {int v4l2_scene; } ;
struct TYPE_7__ {void* priv; } ;


 int ARRAY_SIZE (TYPE_5__*) ;
 int BIT (int ) ;




 int V4L2_CID_SCENE_MODE ;
 int V4L2_CTRL_COUNT ;
 int V4L2_SCENE_MODE_NONE ;
 int bm2835_mmal_ctrl_ops ;
 int pr_err (char*,int,int,int ) ;
 TYPE_5__* scene_configs ;
 int v4l2_ctrl_auto_cluster (int ,TYPE_1__**,int ,int ) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 TYPE_1__* v4l2_ctrl_new_int_menu (struct v4l2_ctrl_handler*,int *,int ,int ,int ,int ) ;
 TYPE_1__* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int ,int ,int ,int ) ;
 TYPE_1__* v4l2_ctrl_new_std_menu (struct v4l2_ctrl_handler*,int *,int ,int ,int ,int ) ;
 struct bm2835_mmal_v4l2_ctrl* v4l2_ctrls ;

int bm2835_mmal_init_controls(struct bm2835_mmal_dev *dev,
         struct v4l2_ctrl_handler *hdl)
{
 int c;
 const struct bm2835_mmal_v4l2_ctrl *ctrl;

 v4l2_ctrl_handler_init(hdl, V4L2_CTRL_COUNT);

 for (c = 0; c < V4L2_CTRL_COUNT; c++) {
  ctrl = &v4l2_ctrls[c];

  switch (ctrl->type) {
  case 129:
   dev->ctrls[c] =
    v4l2_ctrl_new_std(hdl,
        &bm2835_mmal_ctrl_ops,
        ctrl->id, ctrl->min,
        ctrl->max, ctrl->step,
        ctrl->def);
   break;

  case 128:
  {
   u64 mask = ctrl->min;

   if (ctrl->id == V4L2_CID_SCENE_MODE) {





    int i;

    mask = BIT(V4L2_SCENE_MODE_NONE);
    for (i = 0;
         i < ARRAY_SIZE(scene_configs);
         i++) {
     mask |= BIT(scene_configs[i].v4l2_scene);
    }
    mask = ~mask;
   }

   dev->ctrls[c] =
    v4l2_ctrl_new_std_menu(hdl,
             &bm2835_mmal_ctrl_ops,
             ctrl->id, ctrl->max,
             mask, ctrl->def);
   break;
  }

  case 130:
   dev->ctrls[c] =
    v4l2_ctrl_new_int_menu(hdl,
             &bm2835_mmal_ctrl_ops,
             ctrl->id, ctrl->max,
             ctrl->def, ctrl->imenu);
   break;

  case 131:

   continue;
  }

  if (hdl->error)
   break;

  dev->ctrls[c]->priv = (void *)ctrl;
 }

 if (hdl->error) {
  pr_err("error adding control %d/%d id 0x%x\n", c,
         V4L2_CTRL_COUNT, ctrl->id);
  return hdl->error;
 }

 for (c = 0; c < V4L2_CTRL_COUNT; c++) {
  ctrl = &v4l2_ctrls[c];

  switch (ctrl->type) {
  case 131:
   v4l2_ctrl_auto_cluster(ctrl->min,
            &dev->ctrls[c + 1],
            ctrl->max,
            ctrl->def);
   break;

  case 129:
  case 128:
  case 130:
   break;
  }
 }

 return 0;
}
