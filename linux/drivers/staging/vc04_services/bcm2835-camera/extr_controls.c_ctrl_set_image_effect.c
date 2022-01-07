
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vchiq_mmal_port {int dummy; } ;
struct v4l2_ctrl {scalar_t__ val; int id; } ;
struct mmal_parameter_imagefx_parameters {int num_effect_params; int v; int u; scalar_t__ enable; int effect; int * effect_parameter; } ;
struct bm2835_mmal_v4l2_ctrl {int dummy; } ;
struct bm2835_mmal_dev {struct mmal_parameter_imagefx_parameters colourfx; int v4l2_dev; int instance; TYPE_1__** component; } ;
typedef int imagefx ;
struct TYPE_5__ {scalar_t__ v4l2_effect; int num_effect_params; int v; int u; int col_fx_fixed_cbcr; scalar_t__ col_fx_enable; int * effect_params; int mmal_effect; } ;
struct TYPE_4__ {struct vchiq_mmal_port control; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 size_t COMP_CAMERA ;
 int EINVAL ;
 int MMAL_MAX_IMAGEFX_PARAMETERS ;
 int MMAL_PARAMETER_COLOUR_EFFECT ;
 int MMAL_PARAMETER_IMAGE_EFFECT_PARAMETERS ;
 int bcm2835_v4l2_debug ;
 int v4l2_dbg (int,int ,int *,char*,struct bm2835_mmal_v4l2_ctrl const*,int ,scalar_t__,int ,char*,int ,int ,int,int) ;
 TYPE_2__* v4l2_to_mmal_effects_values ;
 int vchiq_mmal_port_parameter_set (int ,struct vchiq_mmal_port*,int ,struct mmal_parameter_imagefx_parameters*,int) ;

__attribute__((used)) static int ctrl_set_image_effect(struct bm2835_mmal_dev *dev,
     struct v4l2_ctrl *ctrl,
     const struct bm2835_mmal_v4l2_ctrl *mmal_ctrl)
{
 int ret = -EINVAL;
 int i, j;
 struct vchiq_mmal_port *control;
 struct mmal_parameter_imagefx_parameters imagefx;

 for (i = 0; i < ARRAY_SIZE(v4l2_to_mmal_effects_values); i++) {
  if (ctrl->val == v4l2_to_mmal_effects_values[i].v4l2_effect) {
   imagefx.effect =
    v4l2_to_mmal_effects_values[i].mmal_effect;
   imagefx.num_effect_params =
    v4l2_to_mmal_effects_values[i].num_effect_params;

   if (imagefx.num_effect_params > MMAL_MAX_IMAGEFX_PARAMETERS)
    imagefx.num_effect_params = MMAL_MAX_IMAGEFX_PARAMETERS;

   for (j = 0; j < imagefx.num_effect_params; j++)
    imagefx.effect_parameter[j] =
     v4l2_to_mmal_effects_values[i].effect_params[j];

   dev->colourfx.enable =
    v4l2_to_mmal_effects_values[i].col_fx_enable;
   if (!v4l2_to_mmal_effects_values[i].col_fx_fixed_cbcr) {
    dev->colourfx.u =
     v4l2_to_mmal_effects_values[i].u;
    dev->colourfx.v =
     v4l2_to_mmal_effects_values[i].v;
   }

   control = &dev->component[COMP_CAMERA]->control;

   ret = vchiq_mmal_port_parameter_set(
     dev->instance, control,
     MMAL_PARAMETER_IMAGE_EFFECT_PARAMETERS,
     &imagefx, sizeof(imagefx));
   if (ret)
    goto exit;

   ret = vchiq_mmal_port_parameter_set(
     dev->instance, control,
     MMAL_PARAMETER_COLOUR_EFFECT,
     &dev->colourfx, sizeof(dev->colourfx));
  }
 }

exit:
 v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
   "mmal_ctrl:%p ctrl id:0x%x ctrl val:%d imagefx:0x%x color_effect:%s u:%d v:%d ret %d(%d)\n",
    mmal_ctrl, ctrl->id, ctrl->val, imagefx.effect,
    dev->colourfx.enable ? "true" : "false",
    dev->colourfx.u, dev->colourfx.v,
    ret, (ret == 0 ? 0 : -EINVAL));
 return (ret == 0 ? 0 : -EINVAL);
}
