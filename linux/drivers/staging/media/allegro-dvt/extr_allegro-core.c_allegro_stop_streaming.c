
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_queue {scalar_t__ type; } ;
struct allegro_dev {int v4l2_dev; } ;
struct TYPE_2__ {int m2m_ctx; } ;
struct allegro_channel {TYPE_1__ fh; struct allegro_dev* dev; } ;


 int ALLEGRO_STATE_STOPPED ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_TYPE_IS_OUTPUT (scalar_t__) ;
 int VB2_BUF_STATE_ERROR ;
 int allegro_destroy_channel (struct allegro_channel*) ;
 int allegro_set_state (struct allegro_channel*,int ) ;
 int debug ;
 int v4l2_dbg (int,int ,int *,char*,char*) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;
 struct allegro_channel* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static void allegro_stop_streaming(struct vb2_queue *q)
{
 struct allegro_channel *channel = vb2_get_drv_priv(q);
 struct allegro_dev *dev = channel->dev;
 struct vb2_v4l2_buffer *buffer;

 v4l2_dbg(2, debug, &dev->v4l2_dev,
   "%s: stop streaming\n",
   V4L2_TYPE_IS_OUTPUT(q->type) ? "output" : "capture");

 if (V4L2_TYPE_IS_OUTPUT(q->type)) {
  allegro_set_state(channel, ALLEGRO_STATE_STOPPED);
  while ((buffer = v4l2_m2m_src_buf_remove(channel->fh.m2m_ctx)))
   v4l2_m2m_buf_done(buffer, VB2_BUF_STATE_ERROR);
 } else if (q->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
  allegro_destroy_channel(channel);
  while ((buffer = v4l2_m2m_dst_buf_remove(channel->fh.m2m_ctx)))
   v4l2_m2m_buf_done(buffer, VB2_BUF_STATE_ERROR);
 }
}
