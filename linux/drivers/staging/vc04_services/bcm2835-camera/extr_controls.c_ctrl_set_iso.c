
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32_value ;
typedef scalar_t__ u32 ;
struct vchiq_mmal_port {int dummy; } ;
struct v4l2_ctrl {size_t val; scalar_t__ id; } ;
struct bm2835_mmal_v4l2_ctrl {size_t max; size_t min; } ;
struct bm2835_mmal_dev {int manual_iso_enabled; int instance; scalar_t__ iso; TYPE_1__** component; } ;
struct TYPE_2__ {struct vchiq_mmal_port control; } ;


 size_t COMP_CAMERA ;
 int MMAL_PARAMETER_ISO ;
 scalar_t__ V4L2_CID_ISO_SENSITIVITY ;
 scalar_t__ V4L2_CID_ISO_SENSITIVITY_AUTO ;
 size_t V4L2_ISO_SENSITIVITY_MANUAL ;
 scalar_t__* iso_values ;
 int vchiq_mmal_port_parameter_set (int ,struct vchiq_mmal_port*,int ,scalar_t__*,int) ;

__attribute__((used)) static int ctrl_set_iso(struct bm2835_mmal_dev *dev,
   struct v4l2_ctrl *ctrl,
   const struct bm2835_mmal_v4l2_ctrl *mmal_ctrl)
{
 u32 u32_value;
 struct vchiq_mmal_port *control;

 if (ctrl->val > mmal_ctrl->max || ctrl->val < mmal_ctrl->min)
  return 1;

 if (ctrl->id == V4L2_CID_ISO_SENSITIVITY)
  dev->iso = iso_values[ctrl->val];
 else if (ctrl->id == V4L2_CID_ISO_SENSITIVITY_AUTO)
  dev->manual_iso_enabled =
    (ctrl->val == V4L2_ISO_SENSITIVITY_MANUAL);

 control = &dev->component[COMP_CAMERA]->control;

 if (dev->manual_iso_enabled)
  u32_value = dev->iso;
 else
  u32_value = 0;

 return vchiq_mmal_port_parameter_set(dev->instance, control,
          MMAL_PARAMETER_ISO,
          &u32_value, sizeof(u32_value));
}
