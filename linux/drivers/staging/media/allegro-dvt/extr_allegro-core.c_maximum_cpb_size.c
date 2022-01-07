
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum v4l2_mpeg_video_h264_level { ____Placeholder_v4l2_mpeg_video_h264_level } v4l2_mpeg_video_h264_level ;
__attribute__((used)) static unsigned int maximum_cpb_size(enum v4l2_mpeg_video_h264_level level)
{
 switch (level) {
 case 142:
  return 175;
 case 143:
  return 350;
 case 141:
  return 500;
 case 140:
  return 1000;
 case 139:
  return 2000;
 case 138:
  return 2000;
 case 137:
  return 4000;
 case 136:
  return 4000;
 case 135:
  return 10000;
 case 134:
  return 14000;
 case 133:
  return 20000;
 case 132:
  return 25000;
 case 131:
  return 62500;
 case 130:
  return 62500;
 case 129:
  return 135000;
 case 128:
 default:
  return 240000;
 }
}
