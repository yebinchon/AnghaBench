
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum v4l2_mpeg_video_h264_level { ____Placeholder_v4l2_mpeg_video_h264_level } v4l2_mpeg_video_h264_level ;


 unsigned int DIV_ROUND_UP (unsigned int,int ) ;
 int SIZE_MACROBLOCK ;
 int V4L2_MPEG_VIDEO_H264_LEVEL_1_0 ;
 int V4L2_MPEG_VIDEO_H264_LEVEL_1_1 ;
 int V4L2_MPEG_VIDEO_H264_LEVEL_2_1 ;
 int V4L2_MPEG_VIDEO_H264_LEVEL_2_2 ;
 int V4L2_MPEG_VIDEO_H264_LEVEL_3_1 ;
 int V4L2_MPEG_VIDEO_H264_LEVEL_3_2 ;
 int V4L2_MPEG_VIDEO_H264_LEVEL_4_0 ;
 int V4L2_MPEG_VIDEO_H264_LEVEL_4_2 ;
 int V4L2_MPEG_VIDEO_H264_LEVEL_5_0 ;
 int V4L2_MPEG_VIDEO_H264_LEVEL_5_1 ;

__attribute__((used)) static enum v4l2_mpeg_video_h264_level
select_minimum_h264_level(unsigned int width, unsigned int height)
{
 unsigned int pic_width_in_mb = DIV_ROUND_UP(width, SIZE_MACROBLOCK);
 unsigned int frame_height_in_mb = DIV_ROUND_UP(height, SIZE_MACROBLOCK);
 unsigned int frame_size_in_mb = pic_width_in_mb * frame_height_in_mb;
 enum v4l2_mpeg_video_h264_level level = V4L2_MPEG_VIDEO_H264_LEVEL_4_0;
 if (frame_size_in_mb <= 99)
  level = V4L2_MPEG_VIDEO_H264_LEVEL_1_0;
 else if (frame_size_in_mb <= 396)
  level = V4L2_MPEG_VIDEO_H264_LEVEL_1_1;
 else if (frame_size_in_mb <= 792)
  level = V4L2_MPEG_VIDEO_H264_LEVEL_2_1;
 else if (frame_size_in_mb <= 1620)
  level = V4L2_MPEG_VIDEO_H264_LEVEL_2_2;
 else if (frame_size_in_mb <= 3600)
  level = V4L2_MPEG_VIDEO_H264_LEVEL_3_1;
 else if (frame_size_in_mb <= 5120)
  level = V4L2_MPEG_VIDEO_H264_LEVEL_3_2;
 else if (frame_size_in_mb <= 8192)
  level = V4L2_MPEG_VIDEO_H264_LEVEL_4_0;
 else if (frame_size_in_mb <= 8704)
  level = V4L2_MPEG_VIDEO_H264_LEVEL_4_2;
 else if (frame_size_in_mb <= 22080)
  level = V4L2_MPEG_VIDEO_H264_LEVEL_5_0;
 else
  level = V4L2_MPEG_VIDEO_H264_LEVEL_5_1;

 return level;
}
