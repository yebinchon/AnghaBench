
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_6__ {int index; int timestamp; TYPE_2__* planes; } ;
struct vb2_v4l2_buffer {int field; TYPE_3__ vb2_buf; int flags; scalar_t__ sequence; } ;
struct v4l2_event {int type; } ;
struct device {int dummy; } ;
struct amvdec_session {int pixfmt_cap; int esparser_queue_work; int esparser_queued_bufs; scalar_t__ should_stop; int fh; int sequence_cap; TYPE_1__* core; } ;
struct TYPE_5__ {int bytesused; } ;
struct TYPE_4__ {struct device* dev_dec; } ;


 int V4L2_BUF_FLAG_LAST ;
 int V4L2_EVENT_EOS ;


 int VB2_BUF_STATE_DONE ;
 int amvdec_get_output_size (struct amvdec_session*) ;
 int atomic_read (int *) ;
 int dev_dbg (struct device*,char*,...) ;
 int schedule_work (int *) ;
 int v4l2_event_queue_fh (int *,struct v4l2_event const*) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;

__attribute__((used)) static void dst_buf_done(struct amvdec_session *sess,
    struct vb2_v4l2_buffer *vbuf,
    u32 field,
    u64 timestamp)
{
 struct device *dev = sess->core->dev_dec;
 u32 output_size = amvdec_get_output_size(sess);

 switch (sess->pixfmt_cap) {
 case 129:
  vbuf->vb2_buf.planes[0].bytesused = output_size;
  vbuf->vb2_buf.planes[1].bytesused = output_size / 2;
  break;
 case 128:
  vbuf->vb2_buf.planes[0].bytesused = output_size;
  vbuf->vb2_buf.planes[1].bytesused = output_size / 4;
  vbuf->vb2_buf.planes[2].bytesused = output_size / 4;
  break;
 }

 vbuf->vb2_buf.timestamp = timestamp;
 vbuf->sequence = sess->sequence_cap++;

 if (sess->should_stop &&
     atomic_read(&sess->esparser_queued_bufs) <= 2) {
  const struct v4l2_event ev = { .type = V4L2_EVENT_EOS };

  dev_dbg(dev, "Signaling EOS\n");
  v4l2_event_queue_fh(&sess->fh, &ev);
  vbuf->flags |= V4L2_BUF_FLAG_LAST;
 } else if (sess->should_stop)
  dev_dbg(dev, "should_stop, %u bufs remain\n",
   atomic_read(&sess->esparser_queued_bufs));

 dev_dbg(dev, "Buffer %u done\n", vbuf->vb2_buf.index);
 vbuf->field = field;
 v4l2_m2m_buf_done(vbuf, VB2_BUF_STATE_DONE);


 schedule_work(&sess->esparser_queue_work);
}
