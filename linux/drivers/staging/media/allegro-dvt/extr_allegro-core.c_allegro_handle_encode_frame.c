
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct mcu_msg_encode_frame_response {int channel_id; TYPE_1__ header; } ;
struct allegro_dev {int v4l2_dev; } ;
struct allegro_channel {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct allegro_channel*) ;
 int allegro_channel_finish_frame (struct allegro_channel*,struct mcu_msg_encode_frame_response*) ;
 struct allegro_channel* allegro_find_channel_by_channel_id (struct allegro_dev*,int ) ;
 int msg_type_name (int ) ;
 int v4l2_err (int *,char*,int ,int ) ;

__attribute__((used)) static int
allegro_handle_encode_frame(struct allegro_dev *dev,
       struct mcu_msg_encode_frame_response *msg)
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

 allegro_channel_finish_frame(channel, msg);

 return 0;
}
