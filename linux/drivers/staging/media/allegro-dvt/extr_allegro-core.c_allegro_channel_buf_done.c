
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_v4l2_buffer {int flags; } ;
struct v4l2_event {int type; } ;
struct allegro_channel {int fh; } ;
typedef enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;


 int ALLEGRO_STATE_STOPPED ;
 int V4L2_BUF_FLAG_LAST ;
 int V4L2_EVENT_EOS ;
 scalar_t__ allegro_channel_is_at_eos (struct allegro_channel*) ;
 int allegro_set_state (struct allegro_channel*,int ) ;
 int v4l2_event_queue_fh (int *,struct v4l2_event const*) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int) ;

__attribute__((used)) static void allegro_channel_buf_done(struct allegro_channel *channel,
         struct vb2_v4l2_buffer *buf,
         enum vb2_buffer_state state)
{
 const struct v4l2_event eos_event = {
  .type = V4L2_EVENT_EOS
 };

 if (allegro_channel_is_at_eos(channel)) {
  buf->flags |= V4L2_BUF_FLAG_LAST;
  v4l2_event_queue_fh(&channel->fh, &eos_event);

  allegro_set_state(channel, ALLEGRO_STATE_STOPPED);
 }

 v4l2_m2m_buf_done(buf, state);
}
