
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum v4l2_mpeg_video_h264_level { ____Placeholder_v4l2_mpeg_video_h264_level } v4l2_mpeg_video_h264_level ;


 int EINVAL ;
int nal_h264_level_from_v4l2(enum v4l2_mpeg_video_h264_level level)
{
 switch (level) {
 case 142:
  return 10;
 case 143:
  return 9;
 case 141:
  return 11;
 case 140:
  return 12;
 case 139:
  return 13;
 case 138:
  return 20;
 case 137:
  return 21;
 case 136:
  return 22;
 case 135:
  return 30;
 case 134:
  return 31;
 case 133:
  return 32;
 case 132:
  return 40;
 case 131:
  return 41;
 case 130:
  return 42;
 case 129:
  return 50;
 case 128:
  return 51;
 default:
  return -EINVAL;
 }
}
