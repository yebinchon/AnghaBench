
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32_value ;
typedef int u32 ;
struct vchiq_mmal_component {int * output; } ;
struct v4l2_ctrl {int val; } ;
struct bm2835_mmal_v4l2_ctrl {int mmal_id; } ;
struct bm2835_mmal_dev {int instance; struct vchiq_mmal_component** component; } ;


 size_t COMP_CAMERA ;
 int vchiq_mmal_port_parameter_set (int ,int *,int ,int*,int) ;

__attribute__((used)) static int ctrl_set_rotate(struct bm2835_mmal_dev *dev,
      struct v4l2_ctrl *ctrl,
      const struct bm2835_mmal_v4l2_ctrl *mmal_ctrl)
{
 int ret;
 u32 u32_value;
 struct vchiq_mmal_component *camera;

 camera = dev->component[COMP_CAMERA];

 u32_value = ((ctrl->val % 360) / 90) * 90;

 ret = vchiq_mmal_port_parameter_set(dev->instance, &camera->output[0],
         mmal_ctrl->mmal_id,
         &u32_value, sizeof(u32_value));
 if (ret < 0)
  return ret;

 ret = vchiq_mmal_port_parameter_set(dev->instance, &camera->output[1],
         mmal_ctrl->mmal_id,
         &u32_value, sizeof(u32_value));
 if (ret < 0)
  return ret;

 return vchiq_mmal_port_parameter_set(dev->instance, &camera->output[2],
         mmal_ctrl->mmal_id,
         &u32_value, sizeof(u32_value));
}
