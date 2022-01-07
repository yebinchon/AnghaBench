
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
 int MMAL_PARAM_FLICKERAVOID_50HZ ;
 int MMAL_PARAM_FLICKERAVOID_60HZ ;
 int MMAL_PARAM_FLICKERAVOID_AUTO ;
 int MMAL_PARAM_FLICKERAVOID_OFF ;




 int vchiq_mmal_port_parameter_set (int ,struct vchiq_mmal_port*,int ,int *,int) ;

__attribute__((used)) static int ctrl_set_flicker_avoidance(struct bm2835_mmal_dev *dev,
          struct v4l2_ctrl *ctrl,
          const struct bm2835_mmal_v4l2_ctrl *mmal_ctrl)
{
 u32 u32_value;
 struct vchiq_mmal_port *control;

 control = &dev->component[COMP_CAMERA]->control;

 switch (ctrl->val) {
 case 128:
  u32_value = MMAL_PARAM_FLICKERAVOID_OFF;
  break;
 case 131:
  u32_value = MMAL_PARAM_FLICKERAVOID_50HZ;
  break;
 case 130:
  u32_value = MMAL_PARAM_FLICKERAVOID_60HZ;
  break;
 case 129:
  u32_value = MMAL_PARAM_FLICKERAVOID_AUTO;
  break;
 }

 return vchiq_mmal_port_parameter_set(dev->instance, control,
          mmal_ctrl->mmal_id,
          &u32_value, sizeof(u32_value));
}
