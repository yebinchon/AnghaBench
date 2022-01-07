
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct allegro_channel {int height; int stride; int sizeimage_raw; int gop_size; int level; int cpb_size; void* bitrate_peak; void* bitrate; int bitrate_mode; int width; int sizeimage_encoded; int profile; int codec; int pixelformat; int xfer_func; int quantization; int ycbcr_enc; int colorspace; } ;


 int ALLEGRO_GOP_SIZE_DEFAULT ;
 int ALLEGRO_HEIGHT_DEFAULT ;
 int ALLEGRO_WIDTH_DEFAULT ;
 int V4L2_COLORSPACE_REC709 ;
 int V4L2_MPEG_VIDEO_BITRATE_MODE_CBR ;
 int V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE ;
 int V4L2_PIX_FMT_H264 ;
 int V4L2_PIX_FMT_NV12 ;
 int V4L2_QUANTIZATION_DEFAULT ;
 int V4L2_XFER_FUNC_DEFAULT ;
 int V4L2_YCBCR_ENC_DEFAULT ;
 int estimate_stream_size (int ,int) ;
 void* maximum_bitrate (int ) ;
 int maximum_cpb_size (int ) ;
 int round_up (int ,int) ;
 int select_minimum_h264_level (int ,int) ;

__attribute__((used)) static void allegro_set_default_params(struct allegro_channel *channel)
{
 channel->width = ALLEGRO_WIDTH_DEFAULT;
 channel->height = ALLEGRO_HEIGHT_DEFAULT;
 channel->stride = round_up(channel->width, 32);

 channel->colorspace = V4L2_COLORSPACE_REC709;
 channel->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
 channel->quantization = V4L2_QUANTIZATION_DEFAULT;
 channel->xfer_func = V4L2_XFER_FUNC_DEFAULT;

 channel->pixelformat = V4L2_PIX_FMT_NV12;
 channel->sizeimage_raw = channel->stride * channel->height * 3 / 2;

 channel->codec = V4L2_PIX_FMT_H264;
 channel->profile = V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE;
 channel->level =
  select_minimum_h264_level(channel->width, channel->height);
 channel->sizeimage_encoded =
  estimate_stream_size(channel->width, channel->height);

 channel->bitrate_mode = V4L2_MPEG_VIDEO_BITRATE_MODE_CBR;
 channel->bitrate = maximum_bitrate(channel->level);
 channel->bitrate_peak = maximum_bitrate(channel->level);
 channel->cpb_size = maximum_cpb_size(channel->level);
 channel->gop_size = ALLEGRO_GOP_SIZE_DEFAULT;
}
