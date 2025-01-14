
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32_value ;
typedef int u32 ;
struct vchiq_mmal_component {int * output; } ;
struct v4l2_ctrl {scalar_t__ id; scalar_t__ val; } ;
struct bm2835_mmal_v4l2_ctrl {int mmal_id; } ;
struct bm2835_mmal_dev {int instance; scalar_t__ vflip; scalar_t__ hflip; struct vchiq_mmal_component** component; } ;


 size_t COMP_CAMERA ;
 int MMAL_PARAM_MIRROR_BOTH ;
 int MMAL_PARAM_MIRROR_HORIZONTAL ;
 int MMAL_PARAM_MIRROR_NONE ;
 int MMAL_PARAM_MIRROR_VERTICAL ;
 scalar_t__ V4L2_CID_HFLIP ;
 int vchiq_mmal_port_parameter_set (int ,int *,int ,int *,int) ;

__attribute__((used)) static int ctrl_set_flip(struct bm2835_mmal_dev *dev,
    struct v4l2_ctrl *ctrl,
    const struct bm2835_mmal_v4l2_ctrl *mmal_ctrl)
{
 int ret;
 u32 u32_value;
 struct vchiq_mmal_component *camera;

 if (ctrl->id == V4L2_CID_HFLIP)
  dev->hflip = ctrl->val;
 else
  dev->vflip = ctrl->val;

 camera = dev->component[COMP_CAMERA];

 if (dev->hflip && dev->vflip)
  u32_value = MMAL_PARAM_MIRROR_BOTH;
 else if (dev->hflip)
  u32_value = MMAL_PARAM_MIRROR_HORIZONTAL;
 else if (dev->vflip)
  u32_value = MMAL_PARAM_MIRROR_VERTICAL;
 else
  u32_value = MMAL_PARAM_MIRROR_NONE;

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
