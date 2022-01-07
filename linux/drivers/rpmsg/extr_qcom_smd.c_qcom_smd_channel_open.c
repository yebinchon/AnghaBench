
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_smd_edge {int dev; } ;
struct qcom_smd_channel {scalar_t__ remote_state; int state_change_event; int bounce_buffer; int fifo_size; struct qcom_smd_edge* edge; } ;
typedef int rpmsg_rx_cb_t ;


 int ENOMEM ;
 int ETIMEDOUT ;
 int GFP_KERNEL ;
 int HZ ;
 scalar_t__ SMD_CHANNEL_CLOSED ;
 scalar_t__ SMD_CHANNEL_OPENED ;
 scalar_t__ SMD_CHANNEL_OPENING ;
 int SZ_4K ;
 int dev_err (int *,char*) ;
 int kmalloc (size_t,int ) ;
 size_t min (int ,int ) ;
 int qcom_smd_channel_set_callback (struct qcom_smd_channel*,int ) ;
 int qcom_smd_channel_set_state (struct qcom_smd_channel*,scalar_t__) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int qcom_smd_channel_open(struct qcom_smd_channel *channel,
     rpmsg_rx_cb_t cb)
{
 struct qcom_smd_edge *edge = channel->edge;
 size_t bb_size;
 int ret;




 bb_size = min(channel->fifo_size, SZ_4K);
 channel->bounce_buffer = kmalloc(bb_size, GFP_KERNEL);
 if (!channel->bounce_buffer)
  return -ENOMEM;

 qcom_smd_channel_set_callback(channel, cb);
 qcom_smd_channel_set_state(channel, SMD_CHANNEL_OPENING);


 ret = wait_event_interruptible_timeout(channel->state_change_event,
   channel->remote_state == SMD_CHANNEL_OPENING ||
   channel->remote_state == SMD_CHANNEL_OPENED,
   HZ);
 if (!ret) {
  dev_err(&edge->dev, "remote side did not enter opening state\n");
  goto out_close_timeout;
 }

 qcom_smd_channel_set_state(channel, SMD_CHANNEL_OPENED);


 ret = wait_event_interruptible_timeout(channel->state_change_event,
   channel->remote_state == SMD_CHANNEL_OPENED,
   HZ);
 if (!ret) {
  dev_err(&edge->dev, "remote side did not enter open state\n");
  goto out_close_timeout;
 }

 return 0;

out_close_timeout:
 qcom_smd_channel_set_state(channel, SMD_CHANNEL_CLOSED);
 return -ETIMEDOUT;
}
