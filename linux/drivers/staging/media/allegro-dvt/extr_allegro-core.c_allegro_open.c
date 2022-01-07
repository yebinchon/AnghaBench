
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct video_device {int dummy; } ;
struct v4l2_ctrl_handler {int dummy; } ;
struct file {TYPE_1__* private_data; } ;
struct allegro_dev {int m2m_dev; int channels; } ;
struct TYPE_3__ {int m2m_ctx; struct v4l2_ctrl_handler* ctrl_handler; } ;
struct allegro_channel {int bitrate; int bitrate_peak; int cpb_size; int gop_size; int mcu_channel_id; int user_id; TYPE_1__ fh; int list; int buffers_intermediate; int buffers_reference; void* mpeg_video_gop_size; void* mpeg_video_cpb_size; void* mpeg_video_bitrate_peak; void* mpeg_video_bitrate; int bitrate_mode; void* mpeg_video_bitrate_mode; void* mpeg_video_h264_level; void* mpeg_video_h264_profile; struct v4l2_ctrl_handler ctrl_handler; struct allegro_dev* dev; int completion; } ;


 int ALLEGRO_GOP_SIZE_MAX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int V4L2_CID_MIN_BUFFERS_FOR_OUTPUT ;
 int V4L2_CID_MPEG_VIDEO_BITRATE ;
 int V4L2_CID_MPEG_VIDEO_BITRATE_MODE ;
 int V4L2_CID_MPEG_VIDEO_BITRATE_PEAK ;
 int V4L2_CID_MPEG_VIDEO_GOP_SIZE ;
 int V4L2_CID_MPEG_VIDEO_H264_CPB_SIZE ;
 int V4L2_CID_MPEG_VIDEO_H264_LEVEL ;
 int V4L2_CID_MPEG_VIDEO_H264_PROFILE ;
 int V4L2_MPEG_VIDEO_BITRATE_MODE_CBR ;
 int V4L2_MPEG_VIDEO_H264_LEVEL_1B ;
 int V4L2_MPEG_VIDEO_H264_LEVEL_5_1 ;
 int V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE ;
 int allegro_ctrl_ops ;
 int allegro_queue_init ;
 int allegro_set_default_params (struct allegro_channel*) ;
 int init_completion (int *) ;
 struct allegro_channel* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int maximum_bitrate (int ) ;
 int maximum_cpb_size (int ) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int ) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int,int,int,int) ;
 void* v4l2_ctrl_new_std_menu (struct v4l2_ctrl_handler*,int *,int ,int ,int,int ) ;
 int v4l2_fh_add (TYPE_1__*) ;
 int v4l2_fh_init (TYPE_1__*,struct video_device*) ;
 int v4l2_m2m_ctx_init (int ,struct allegro_channel*,int ) ;
 struct video_device* video_devdata (struct file*) ;
 struct allegro_dev* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static int allegro_open(struct file *file)
{
 struct video_device *vdev = video_devdata(file);
 struct allegro_dev *dev = video_get_drvdata(vdev);
 struct allegro_channel *channel = ((void*)0);
 struct v4l2_ctrl_handler *handler;
 u64 mask;

 channel = kzalloc(sizeof(*channel), GFP_KERNEL);
 if (!channel)
  return -ENOMEM;

 v4l2_fh_init(&channel->fh, vdev);
 file->private_data = &channel->fh;
 v4l2_fh_add(&channel->fh);

 init_completion(&channel->completion);

 channel->dev = dev;

 allegro_set_default_params(channel);

 handler = &channel->ctrl_handler;
 v4l2_ctrl_handler_init(handler, 0);
 channel->mpeg_video_h264_profile = v4l2_ctrl_new_std_menu(handler,
   &allegro_ctrl_ops,
   V4L2_CID_MPEG_VIDEO_H264_PROFILE,
   V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE, 0x0,
   V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE);
 mask = 1 << V4L2_MPEG_VIDEO_H264_LEVEL_1B;
 channel->mpeg_video_h264_level = v4l2_ctrl_new_std_menu(handler,
   &allegro_ctrl_ops,
   V4L2_CID_MPEG_VIDEO_H264_LEVEL,
   V4L2_MPEG_VIDEO_H264_LEVEL_5_1, mask,
   V4L2_MPEG_VIDEO_H264_LEVEL_5_1);
 channel->mpeg_video_bitrate_mode = v4l2_ctrl_new_std_menu(handler,
   &allegro_ctrl_ops,
   V4L2_CID_MPEG_VIDEO_BITRATE_MODE,
   V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, 0,
   channel->bitrate_mode);
 channel->mpeg_video_bitrate = v4l2_ctrl_new_std(handler,
   &allegro_ctrl_ops,
   V4L2_CID_MPEG_VIDEO_BITRATE,
   0, maximum_bitrate(V4L2_MPEG_VIDEO_H264_LEVEL_5_1),
   1, channel->bitrate);
 channel->mpeg_video_bitrate_peak = v4l2_ctrl_new_std(handler,
   &allegro_ctrl_ops,
   V4L2_CID_MPEG_VIDEO_BITRATE_PEAK,
   0, maximum_bitrate(V4L2_MPEG_VIDEO_H264_LEVEL_5_1),
   1, channel->bitrate_peak);
 channel->mpeg_video_cpb_size = v4l2_ctrl_new_std(handler,
   &allegro_ctrl_ops,
   V4L2_CID_MPEG_VIDEO_H264_CPB_SIZE,
   0, maximum_cpb_size(V4L2_MPEG_VIDEO_H264_LEVEL_5_1),
   1, channel->cpb_size);
 channel->mpeg_video_gop_size = v4l2_ctrl_new_std(handler,
   &allegro_ctrl_ops,
   V4L2_CID_MPEG_VIDEO_GOP_SIZE,
   0, ALLEGRO_GOP_SIZE_MAX,
   1, channel->gop_size);
 v4l2_ctrl_new_std(handler,
   &allegro_ctrl_ops,
   V4L2_CID_MIN_BUFFERS_FOR_OUTPUT,
   1, 32,
   1, 1);
 channel->fh.ctrl_handler = handler;

 channel->mcu_channel_id = -1;
 channel->user_id = -1;

 INIT_LIST_HEAD(&channel->buffers_reference);
 INIT_LIST_HEAD(&channel->buffers_intermediate);

 list_add(&channel->list, &dev->channels);

 channel->fh.m2m_ctx = v4l2_m2m_ctx_init(dev->m2m_dev, channel,
      allegro_queue_init);

 return 0;
}
