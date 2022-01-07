
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct allegro_dev {int channel_user_ids; int v4l2_dev; } ;
struct allegro_channel {int mcu_channel_id; int user_id; int mpeg_video_gop_size; int mpeg_video_cpb_size; int mpeg_video_bitrate_peak; int mpeg_video_bitrate; int mpeg_video_bitrate_mode; int mpeg_video_h264_level; int mpeg_video_h264_profile; int completion; struct allegro_dev* dev; } ;


 int allegro_mcu_send_destroy_channel (struct allegro_dev*,struct allegro_channel*) ;
 scalar_t__ channel_exists (struct allegro_channel*) ;
 int clear_bit (int,int *) ;
 int destroy_intermediate_buffers (struct allegro_channel*) ;
 int destroy_reference_buffers (struct allegro_channel*) ;
 int msecs_to_jiffies (int) ;
 int reinit_completion (int *) ;
 int v4l2_ctrl_grab (int ,int) ;
 int v4l2_warn (int *,char*,int) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void allegro_destroy_channel(struct allegro_channel *channel)
{
 struct allegro_dev *dev = channel->dev;
 unsigned long timeout;

 if (channel_exists(channel)) {
  reinit_completion(&channel->completion);
  allegro_mcu_send_destroy_channel(dev, channel);
  timeout = wait_for_completion_timeout(&channel->completion,
            msecs_to_jiffies(5000));
  if (timeout == 0)
   v4l2_warn(&dev->v4l2_dev,
      "channel %d: timeout while destroying\n",
      channel->mcu_channel_id);

  channel->mcu_channel_id = -1;
 }

 destroy_intermediate_buffers(channel);
 destroy_reference_buffers(channel);

 v4l2_ctrl_grab(channel->mpeg_video_h264_profile, 0);
 v4l2_ctrl_grab(channel->mpeg_video_h264_level, 0);
 v4l2_ctrl_grab(channel->mpeg_video_bitrate_mode, 0);
 v4l2_ctrl_grab(channel->mpeg_video_bitrate, 0);
 v4l2_ctrl_grab(channel->mpeg_video_bitrate_peak, 0);
 v4l2_ctrl_grab(channel->mpeg_video_cpb_size, 0);
 v4l2_ctrl_grab(channel->mpeg_video_gop_size, 0);

 if (channel->user_id != -1) {
  clear_bit(channel->user_id, &dev->channel_user_ids);
  channel->user_id = -1;
 }
}
