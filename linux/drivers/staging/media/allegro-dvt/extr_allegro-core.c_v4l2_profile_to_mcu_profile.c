
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum v4l2_mpeg_video_h264_profile { ____Placeholder_v4l2_mpeg_video_h264_profile } v4l2_mpeg_video_h264_profile ;




__attribute__((used)) static u8 v4l2_profile_to_mcu_profile(enum v4l2_mpeg_video_h264_profile profile)
{
 switch (profile) {
 case 128:
 default:
  return 66;
 }
}
