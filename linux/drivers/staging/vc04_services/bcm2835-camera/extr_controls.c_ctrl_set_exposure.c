
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vchiq_mmal_port {int dummy; } ;
struct v4l2_ctrl {int val; } ;
struct bm2835_mmal_v4l2_ctrl {scalar_t__ mmal_id; scalar_t__ id; } ;
struct bm2835_mmal_dev {int exposure_mode_user; int manual_shutter_speed; int exposure_mode_v4l2_user; int exp_auto_priority; scalar_t__ scene_mode; int exposure_mode_active; int instance; TYPE_1__** component; } ;
typedef int shutter_speed ;
typedef enum mmal_parameter_exposuremode { ____Placeholder_mmal_parameter_exposuremode } mmal_parameter_exposuremode ;
struct TYPE_2__ {struct vchiq_mmal_port control; } ;


 size_t COMP_CAMERA ;
 scalar_t__ MMAL_PARAMETER_EXPOSURE_MODE ;
 scalar_t__ MMAL_PARAMETER_SHUTTER_SPEED ;
 int MMAL_PARAM_EXPOSUREMODE_AUTO ;
 int MMAL_PARAM_EXPOSUREMODE_OFF ;
 scalar_t__ V4L2_CID_EXPOSURE_AUTO_PRIORITY ;


 scalar_t__ V4L2_SCENE_MODE_NONE ;
 scalar_t__ set_framerate_params (struct bm2835_mmal_dev*) ;
 int vchiq_mmal_port_parameter_set (int ,struct vchiq_mmal_port*,scalar_t__,int*,int) ;

__attribute__((used)) static int ctrl_set_exposure(struct bm2835_mmal_dev *dev,
        struct v4l2_ctrl *ctrl,
        const struct bm2835_mmal_v4l2_ctrl *mmal_ctrl)
{
 enum mmal_parameter_exposuremode exp_mode = dev->exposure_mode_user;
 u32 shutter_speed = 0;
 struct vchiq_mmal_port *control;
 int ret = 0;

 control = &dev->component[COMP_CAMERA]->control;

 if (mmal_ctrl->mmal_id == MMAL_PARAMETER_SHUTTER_SPEED) {



  dev->manual_shutter_speed = ctrl->val * 100;
 } else if (mmal_ctrl->mmal_id == MMAL_PARAMETER_EXPOSURE_MODE) {
  switch (ctrl->val) {
  case 129:
   exp_mode = MMAL_PARAM_EXPOSUREMODE_AUTO;
   break;

  case 128:
   exp_mode = MMAL_PARAM_EXPOSUREMODE_OFF;
   break;
  }
  dev->exposure_mode_user = exp_mode;
  dev->exposure_mode_v4l2_user = ctrl->val;
 } else if (mmal_ctrl->id == V4L2_CID_EXPOSURE_AUTO_PRIORITY) {
  dev->exp_auto_priority = ctrl->val;
 }

 if (dev->scene_mode == V4L2_SCENE_MODE_NONE) {
  if (exp_mode == MMAL_PARAM_EXPOSUREMODE_OFF)
   shutter_speed = dev->manual_shutter_speed;

  ret = vchiq_mmal_port_parameter_set(dev->instance,
          control,
          MMAL_PARAMETER_SHUTTER_SPEED,
          &shutter_speed,
          sizeof(shutter_speed));
  ret += vchiq_mmal_port_parameter_set(dev->instance,
           control,
           MMAL_PARAMETER_EXPOSURE_MODE,
           &exp_mode,
           sizeof(u32));
  dev->exposure_mode_active = exp_mode;
 }



 ret += set_framerate_params(dev);

 return ret;
}
