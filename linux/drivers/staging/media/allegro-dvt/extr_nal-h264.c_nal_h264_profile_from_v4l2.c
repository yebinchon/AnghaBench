
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum v4l2_mpeg_video_h264_profile { ____Placeholder_v4l2_mpeg_video_h264_profile } v4l2_mpeg_video_h264_profile ;


 int EINVAL ;





int nal_h264_profile_from_v4l2(enum v4l2_mpeg_video_h264_profile profile)
{
 switch (profile) {
 case 131:
  return 66;
 case 128:
  return 77;
 case 130:
  return 88;
 case 129:
  return 100;
 default:
  return -EINVAL;
 }
}
