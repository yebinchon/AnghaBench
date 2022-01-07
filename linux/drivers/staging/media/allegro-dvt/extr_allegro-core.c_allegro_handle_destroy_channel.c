
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct mcu_msg_destroy_channel_response {int channel_id; TYPE_1__ header; } ;
struct allegro_dev {int v4l2_dev; } ;
struct allegro_channel {int completion; int mcu_channel_id; int user_id; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct allegro_channel*) ;
 struct allegro_channel* allegro_find_channel_by_channel_id (struct allegro_dev*,int ) ;
 int complete (int *) ;
 int debug ;
 int msg_type_name (int ) ;
 int v4l2_dbg (int,int ,int *,char*,int ,int ) ;
 int v4l2_err (int *,char*,int ,int ) ;

__attribute__((used)) static int
allegro_handle_destroy_channel(struct allegro_dev *dev,
          struct mcu_msg_destroy_channel_response *msg)
{
 struct allegro_channel *channel;

 channel = allegro_find_channel_by_channel_id(dev, msg->channel_id);
 if (IS_ERR(channel)) {
  v4l2_err(&dev->v4l2_dev,
    "received %s for unknown channel %d\n",
    msg_type_name(msg->header.type),
    msg->channel_id);
  return -EINVAL;
 }

 v4l2_dbg(2, debug, &dev->v4l2_dev,
   "user %d: vcu destroyed channel %d\n",
   channel->user_id, channel->mcu_channel_id);
 complete(&channel->completion);

 return 0;
}
