
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_ctrl {scalar_t__ id; int val; } ;
struct mmal_parameter_video_profile {int level; int profile; } ;
struct bm2835_mmal_v4l2_ctrl {int mmal_id; } ;
struct TYPE_3__ {int enc_profile; int enc_level; } ;
struct bm2835_mmal_dev {TYPE_2__** component; int instance; TYPE_1__ capture; } ;
typedef int param ;
struct TYPE_4__ {int * output; } ;


 size_t COMP_VIDEO_ENCODE ;
 int EINVAL ;
 int MMAL_VIDEO_LEVEL_H264_1 ;
 int MMAL_VIDEO_LEVEL_H264_11 ;
 int MMAL_VIDEO_LEVEL_H264_12 ;
 int MMAL_VIDEO_LEVEL_H264_13 ;
 int MMAL_VIDEO_LEVEL_H264_1b ;
 int MMAL_VIDEO_LEVEL_H264_2 ;
 int MMAL_VIDEO_LEVEL_H264_21 ;
 int MMAL_VIDEO_LEVEL_H264_22 ;
 int MMAL_VIDEO_LEVEL_H264_3 ;
 int MMAL_VIDEO_LEVEL_H264_31 ;
 int MMAL_VIDEO_LEVEL_H264_32 ;
 int MMAL_VIDEO_LEVEL_H264_4 ;
 int MMAL_VIDEO_PROFILE_H264_BASELINE ;
 int MMAL_VIDEO_PROFILE_H264_CONSTRAINED_BASELINE ;
 int MMAL_VIDEO_PROFILE_H264_HIGH ;
 int MMAL_VIDEO_PROFILE_H264_MAIN ;
 scalar_t__ V4L2_CID_MPEG_VIDEO_H264_LEVEL ;
 scalar_t__ V4L2_CID_MPEG_VIDEO_H264_PROFILE ;
 int vchiq_mmal_port_parameter_set (int ,int *,int ,struct mmal_parameter_video_profile*,int) ;

__attribute__((used)) static int ctrl_set_video_encode_profile_level(struct bm2835_mmal_dev *dev,
            struct v4l2_ctrl *ctrl,
            const struct bm2835_mmal_v4l2_ctrl *mmal_ctrl)
{
 struct mmal_parameter_video_profile param;
 int ret = 0;

 if (ctrl->id == V4L2_CID_MPEG_VIDEO_H264_PROFILE) {
  switch (ctrl->val) {
  case 131:
  case 130:
  case 128:
  case 129:
   dev->capture.enc_profile = ctrl->val;
   break;
  default:
   ret = -EINVAL;
   break;
  }
 } else if (ctrl->id == V4L2_CID_MPEG_VIDEO_H264_LEVEL) {
  switch (ctrl->val) {
  case 142:
  case 143:
  case 141:
  case 140:
  case 139:
  case 138:
  case 137:
  case 136:
  case 135:
  case 134:
  case 133:
  case 132:
   dev->capture.enc_level = ctrl->val;
   break;
  default:
   ret = -EINVAL;
   break;
  }
 }

 if (!ret) {
  switch (dev->capture.enc_profile) {
  case 131:
   param.profile = MMAL_VIDEO_PROFILE_H264_BASELINE;
   break;
  case 130:
   param.profile =
    MMAL_VIDEO_PROFILE_H264_CONSTRAINED_BASELINE;
   break;
  case 128:
   param.profile = MMAL_VIDEO_PROFILE_H264_MAIN;
   break;
  case 129:
   param.profile = MMAL_VIDEO_PROFILE_H264_HIGH;
   break;
  default:

   break;
  }

  switch (dev->capture.enc_level) {
  case 142:
   param.level = MMAL_VIDEO_LEVEL_H264_1;
   break;
  case 143:
   param.level = MMAL_VIDEO_LEVEL_H264_1b;
   break;
  case 141:
   param.level = MMAL_VIDEO_LEVEL_H264_11;
   break;
  case 140:
   param.level = MMAL_VIDEO_LEVEL_H264_12;
   break;
  case 139:
   param.level = MMAL_VIDEO_LEVEL_H264_13;
   break;
  case 138:
   param.level = MMAL_VIDEO_LEVEL_H264_2;
   break;
  case 137:
   param.level = MMAL_VIDEO_LEVEL_H264_21;
   break;
  case 136:
   param.level = MMAL_VIDEO_LEVEL_H264_22;
   break;
  case 135:
   param.level = MMAL_VIDEO_LEVEL_H264_3;
   break;
  case 134:
   param.level = MMAL_VIDEO_LEVEL_H264_31;
   break;
  case 133:
   param.level = MMAL_VIDEO_LEVEL_H264_32;
   break;
  case 132:
   param.level = MMAL_VIDEO_LEVEL_H264_4;
   break;
  default:

   break;
  }

  ret = vchiq_mmal_port_parameter_set(dev->instance,
          &dev->component[COMP_VIDEO_ENCODE]->output[0],
   mmal_ctrl->mmal_id,
   &param, sizeof(param));
 }
 return ret;
}
