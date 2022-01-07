
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum v4l2_mpeg_video_h264_level { ____Placeholder_v4l2_mpeg_video_h264_level } v4l2_mpeg_video_h264_level ;
__attribute__((used)) static unsigned int maximum_bitrate(enum v4l2_mpeg_video_h264_level level)
{
 switch (level) {
 case 142:
  return 64000;
 case 143:
  return 128000;
 case 141:
  return 192000;
 case 140:
  return 384000;
 case 139:
  return 768000;
 case 138:
  return 2000000;
 case 137:
  return 4000000;
 case 136:
  return 4000000;
 case 135:
  return 10000000;
 case 134:
  return 14000000;
 case 133:
  return 20000000;
 case 132:
  return 20000000;
 case 131:
  return 50000000;
 case 130:
  return 50000000;
 case 129:
  return 135000000;
 case 128:
 default:
  return 240000000;
 }
}
