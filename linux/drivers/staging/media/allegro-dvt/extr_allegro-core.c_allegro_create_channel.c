
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct allegro_dev {int v4l2_dev; int channel_user_ids; } ;
struct allegro_channel {scalar_t__ user_id; int level; int error; int mcu_channel_id; int completion; int mpeg_video_gop_size; int mpeg_video_cpb_size; int mpeg_video_bitrate_peak; int mpeg_video_bitrate; int mpeg_video_bitrate_mode; int mpeg_video_h264_level; int mpeg_video_h264_profile; int height; int width; int codec; struct allegro_dev* dev; } ;
typedef enum v4l2_mpeg_video_h264_level { ____Placeholder_v4l2_mpeg_video_h264_level } v4l2_mpeg_video_h264_level ;


 int EBUSY ;
 int ETIMEDOUT ;
 int V4L2_CID_MPEG_VIDEO_H264_LEVEL ;
 int allegro_destroy_channel (struct allegro_channel*) ;
 int allegro_mcu_send_create_channel (struct allegro_dev*,struct allegro_channel*) ;
 scalar_t__ allegro_next_user_id (struct allegro_dev*) ;
 scalar_t__ channel_exists (struct allegro_channel*) ;
 int debug ;
 int msecs_to_jiffies (int) ;
 int reinit_completion (int *) ;
 int select_minimum_h264_level (int ,int ) ;
 int set_bit (scalar_t__,int *) ;
 int * v4l2_ctrl_get_menu (int ) ;
 int v4l2_ctrl_grab (int ,int) ;
 int v4l2_dbg (int,int ,int *,char*,scalar_t__,...) ;
 int v4l2_err (int *,char*) ;
 int v4l2_warn (int *,char*,...) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int allegro_create_channel(struct allegro_channel *channel)
{
 struct allegro_dev *dev = channel->dev;
 unsigned long timeout;
 enum v4l2_mpeg_video_h264_level min_level;

 if (channel_exists(channel)) {
  v4l2_warn(&dev->v4l2_dev,
     "channel already exists\n");
  return 0;
 }

 channel->user_id = allegro_next_user_id(dev);
 if (channel->user_id < 0) {
  v4l2_err(&dev->v4l2_dev,
    "no free channels available\n");
  return -EBUSY;
 }
 set_bit(channel->user_id, &dev->channel_user_ids);

 v4l2_dbg(1, debug, &dev->v4l2_dev,
   "user %d: creating channel (%4.4s, %dx%d@%d)\n",
   channel->user_id,
   (char *)&channel->codec, channel->width, channel->height, 25);

 min_level = select_minimum_h264_level(channel->width, channel->height);
 if (channel->level < min_level) {
  v4l2_warn(&dev->v4l2_dev,
     "user %d: selected Level %s too low: increasing to Level %s\n",
     channel->user_id,
     v4l2_ctrl_get_menu(V4L2_CID_MPEG_VIDEO_H264_LEVEL)[channel->level],
     v4l2_ctrl_get_menu(V4L2_CID_MPEG_VIDEO_H264_LEVEL)[min_level]);
  channel->level = min_level;
 }

 v4l2_ctrl_grab(channel->mpeg_video_h264_profile, 1);
 v4l2_ctrl_grab(channel->mpeg_video_h264_level, 1);
 v4l2_ctrl_grab(channel->mpeg_video_bitrate_mode, 1);
 v4l2_ctrl_grab(channel->mpeg_video_bitrate, 1);
 v4l2_ctrl_grab(channel->mpeg_video_bitrate_peak, 1);
 v4l2_ctrl_grab(channel->mpeg_video_cpb_size, 1);
 v4l2_ctrl_grab(channel->mpeg_video_gop_size, 1);

 reinit_completion(&channel->completion);
 allegro_mcu_send_create_channel(dev, channel);
 timeout = wait_for_completion_timeout(&channel->completion,
           msecs_to_jiffies(5000));
 if (timeout == 0)
  channel->error = -ETIMEDOUT;
 if (channel->error)
  goto err;

 v4l2_dbg(1, debug, &dev->v4l2_dev,
   "channel %d: accepting buffers\n",
   channel->mcu_channel_id);

 return 0;

err:
 allegro_destroy_channel(channel);

 return channel->error;
}
