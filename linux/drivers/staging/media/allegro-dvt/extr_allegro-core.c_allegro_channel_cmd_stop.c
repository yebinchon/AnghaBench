
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_v4l2_buffer {int dummy; } ;
struct allegro_dev {int v4l2_dev; } ;
struct TYPE_2__ {int m2m_ctx; } ;
struct allegro_channel {int mcu_channel_id; TYPE_1__ fh; struct allegro_dev* dev; } ;





 int EBUSY ;
 int VB2_BUF_STATE_DONE ;
 int allegro_channel_buf_done (struct allegro_channel*,struct vb2_v4l2_buffer*,int ) ;
 int allegro_get_state (struct allegro_channel*) ;
 int allegro_set_state (struct allegro_channel*,int const) ;
 int debug ;
 int v4l2_dbg (int,int ,int *,char*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 scalar_t__ v4l2_m2m_num_src_bufs_ready (int ) ;

__attribute__((used)) static int allegro_channel_cmd_stop(struct allegro_channel *channel)
{
 struct allegro_dev *dev = channel->dev;
 struct vb2_v4l2_buffer *dst_buf;

 switch (allegro_get_state(channel)) {
 case 130:
 case 128:
  return -EBUSY;
 case 129:
  allegro_set_state(channel, 130);
  break;
 default:
  return 0;
 }


 if (v4l2_m2m_num_src_bufs_ready(channel->fh.m2m_ctx) != 0) {
  v4l2_dbg(1, debug, &dev->v4l2_dev,
    "channel %d: CMD_STOP: continue encoding src buffers\n",
    channel->mcu_channel_id);
  return 0;
 }


 dst_buf = v4l2_m2m_dst_buf_remove(channel->fh.m2m_ctx);
 if (dst_buf) {
  v4l2_dbg(1, debug, &dev->v4l2_dev,
    "channel %d: CMD_STOP: signaling EOS\n",
    channel->mcu_channel_id);
  allegro_channel_buf_done(channel, dst_buf, VB2_BUF_STATE_DONE);
  return 0;
 }





 v4l2_dbg(1, debug, &dev->v4l2_dev,
   "channel %d: CMD_STOP: wait for CAPTURE buffer to signal EOS\n",
   channel->mcu_channel_id);
 allegro_set_state(channel, 128);

 return 0;
}
