
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
struct bm2835_mmal_dev {int instance; TYPE_1__** component; } ;
struct TYPE_2__ {struct vchiq_mmal_port control; } ;


 size_t COMP_CAMERA ;
 int MMAL_PARAM_AWBMODE_AUTO ;
 int MMAL_PARAM_AWBMODE_CLOUDY ;
 int MMAL_PARAM_AWBMODE_FLASH ;
 int MMAL_PARAM_AWBMODE_FLUORESCENT ;
 int MMAL_PARAM_AWBMODE_HORIZON ;
 int MMAL_PARAM_AWBMODE_INCANDESCENT ;
 int MMAL_PARAM_AWBMODE_OFF ;
 int MMAL_PARAM_AWBMODE_SHADE ;
 int MMAL_PARAM_AWBMODE_SUNLIGHT ;
 int MMAL_PARAM_AWBMODE_TUNGSTEN ;
 int vchiq_mmal_port_parameter_set (int ,struct vchiq_mmal_port*,int ,int *,int) ;

__attribute__((used)) static int ctrl_set_awb_mode(struct bm2835_mmal_dev *dev,
        struct v4l2_ctrl *ctrl,
        const struct bm2835_mmal_v4l2_ctrl *mmal_ctrl)
{
 u32 u32_value;
 struct vchiq_mmal_port *control;

 control = &dev->component[COMP_CAMERA]->control;

 switch (ctrl->val) {
 case 129:
  u32_value = MMAL_PARAM_AWBMODE_OFF;
  break;

 case 137:
  u32_value = MMAL_PARAM_AWBMODE_AUTO;
  break;

 case 130:
  u32_value = MMAL_PARAM_AWBMODE_INCANDESCENT;
  break;

 case 133:
  u32_value = MMAL_PARAM_AWBMODE_FLUORESCENT;
  break;

 case 132:
  u32_value = MMAL_PARAM_AWBMODE_TUNGSTEN;
  break;

 case 131:
  u32_value = MMAL_PARAM_AWBMODE_HORIZON;
  break;

 case 135:
  u32_value = MMAL_PARAM_AWBMODE_SUNLIGHT;
  break;

 case 134:
  u32_value = MMAL_PARAM_AWBMODE_FLASH;
  break;

 case 136:
  u32_value = MMAL_PARAM_AWBMODE_CLOUDY;
  break;

 case 128:
  u32_value = MMAL_PARAM_AWBMODE_SHADE;
  break;
 }

 return vchiq_mmal_port_parameter_set(dev->instance, control,
          mmal_ctrl->mmal_id,
          &u32_value, sizeof(u32_value));
}
