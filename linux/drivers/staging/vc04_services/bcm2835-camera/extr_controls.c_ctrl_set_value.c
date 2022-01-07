
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
 int vchiq_mmal_port_parameter_set (int ,struct vchiq_mmal_port*,int ,int *,int) ;

__attribute__((used)) static int ctrl_set_value(struct bm2835_mmal_dev *dev,
     struct v4l2_ctrl *ctrl,
     const struct bm2835_mmal_v4l2_ctrl *mmal_ctrl)
{
 u32 u32_value;
 struct vchiq_mmal_port *control;

 control = &dev->component[COMP_CAMERA]->control;

 u32_value = ctrl->val;

 return vchiq_mmal_port_parameter_set(dev->instance, control,
          mmal_ctrl->mmal_id,
          &u32_value, sizeof(u32_value));
}
