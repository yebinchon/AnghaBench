
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum v4l2_mpeg_video_bitrate_mode { ____Placeholder_v4l2_mpeg_video_bitrate_mode } v4l2_mpeg_video_bitrate_mode ;





__attribute__((used)) static u32
v4l2_bitrate_mode_to_mcu_mode(enum v4l2_mpeg_video_bitrate_mode mode)
{
 switch (mode) {
 case 128:
  return 2;
 case 129:
 default:
  return 1;
 }
}
