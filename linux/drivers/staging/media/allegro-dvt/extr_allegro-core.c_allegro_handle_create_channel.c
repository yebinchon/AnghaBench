
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct mcu_msg_create_channel_response {int rec_buffers_size; int rec_buffers_count; int int_buffers_size; int int_buffers_count; int channel_id; int error_code; int user_id; TYPE_1__ header; } ;
struct allegro_dev {int v4l2_dev; } ;
struct allegro_channel {int error; int completion; int mcu_channel_id; int user_id; } ;


 int EINVAL ;
 int EIO ;
 scalar_t__ IS_ERR (struct allegro_channel*) ;
 struct allegro_channel* allegro_find_channel_by_user_id (struct allegro_dev*,int ) ;
 int allegro_mcu_push_buffer_intermediate (struct allegro_channel*) ;
 int allegro_mcu_push_buffer_reference (struct allegro_channel*) ;
 int allocate_intermediate_buffers (struct allegro_channel*,int ,int ) ;
 int allocate_reference_buffers (struct allegro_channel*,int ,int ) ;
 int complete (int *) ;
 int debug ;
 int msg_type_name (int ) ;
 int v4l2_dbg (int,int ,int *,char*,int ,int ,...) ;
 int v4l2_err (int *,char*,int ,...) ;
 int v4l2_warn (int *,char*,int ,int ) ;

__attribute__((used)) static int
allegro_handle_create_channel(struct allegro_dev *dev,
         struct mcu_msg_create_channel_response *msg)
{
 struct allegro_channel *channel;
 int err = 0;

 channel = allegro_find_channel_by_user_id(dev, msg->user_id);
 if (IS_ERR(channel)) {
  v4l2_warn(&dev->v4l2_dev,
     "received %s for unknown user %d\n",
     msg_type_name(msg->header.type),
     msg->user_id);
  return -EINVAL;
 }

 if (msg->error_code) {
  v4l2_err(&dev->v4l2_dev,
    "user %d: mcu failed to create channel: error %x\n",
    channel->user_id, msg->error_code);
  err = -EIO;
  goto out;
 }

 channel->mcu_channel_id = msg->channel_id;
 v4l2_dbg(1, debug, &dev->v4l2_dev,
   "user %d: channel has channel id %d\n",
   channel->user_id, channel->mcu_channel_id);

 v4l2_dbg(1, debug, &dev->v4l2_dev,
   "channel %d: intermediate buffers: %d x %d bytes\n",
   channel->mcu_channel_id,
   msg->int_buffers_count, msg->int_buffers_size);
 err = allocate_intermediate_buffers(channel, msg->int_buffers_count,
         msg->int_buffers_size);
 if (err) {
  v4l2_err(&dev->v4l2_dev,
    "channel %d: failed to allocate intermediate buffers\n",
    channel->mcu_channel_id);
  goto out;
 }
 err = allegro_mcu_push_buffer_intermediate(channel);
 if (err)
  goto out;

 v4l2_dbg(1, debug, &dev->v4l2_dev,
   "channel %d: reference buffers: %d x %d bytes\n",
   channel->mcu_channel_id,
   msg->rec_buffers_count, msg->rec_buffers_size);
 err = allocate_reference_buffers(channel, msg->rec_buffers_count,
      msg->rec_buffers_size);
 if (err) {
  v4l2_err(&dev->v4l2_dev,
    "channel %d: failed to allocate reference buffers\n",
    channel->mcu_channel_id);
  goto out;
 }
 err = allegro_mcu_push_buffer_reference(channel);
 if (err)
  goto out;

out:
 channel->error = err;
 complete(&channel->completion);


 return 0;
}
