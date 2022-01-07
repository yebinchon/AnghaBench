
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32_value ;
typedef int u32 ;
struct vchiq_mmal_port {int dummy; } ;
struct v4l2_ctrl {int val; } ;
struct bm2835_mmal_v4l2_ctrl {int mmal_id; } ;
struct bm2835_mmal_dev {scalar_t__ scene_mode; int instance; TYPE_1__** component; int metering_mode; } ;
struct TYPE_2__ {struct vchiq_mmal_port control; } ;


 size_t COMP_CAMERA ;
 int MMAL_PARAM_EXPOSUREMETERINGMODE_AVERAGE ;
 int MMAL_PARAM_EXPOSUREMETERINGMODE_BACKLIT ;
 int MMAL_PARAM_EXPOSUREMETERINGMODE_SPOT ;



 scalar_t__ V4L2_SCENE_MODE_NONE ;
 int vchiq_mmal_port_parameter_set (int ,struct vchiq_mmal_port*,int ,int *,int) ;

__attribute__((used)) static int ctrl_set_metering_mode(struct bm2835_mmal_dev *dev,
      struct v4l2_ctrl *ctrl,
      const struct bm2835_mmal_v4l2_ctrl *mmal_ctrl)
{
 switch (ctrl->val) {
 case 130:
  dev->metering_mode = MMAL_PARAM_EXPOSUREMETERINGMODE_AVERAGE;
  break;

 case 129:
  dev->metering_mode = MMAL_PARAM_EXPOSUREMETERINGMODE_BACKLIT;
  break;

 case 128:
  dev->metering_mode = MMAL_PARAM_EXPOSUREMETERINGMODE_SPOT;
  break;






 }

 if (dev->scene_mode == V4L2_SCENE_MODE_NONE) {
  struct vchiq_mmal_port *control;
  u32 u32_value = dev->metering_mode;

  control = &dev->component[COMP_CAMERA]->control;

  return vchiq_mmal_port_parameter_set(dev->instance, control,
          mmal_ctrl->mmal_id,
          &u32_value, sizeof(u32_value));
 } else {
  return 0;
 }
}
