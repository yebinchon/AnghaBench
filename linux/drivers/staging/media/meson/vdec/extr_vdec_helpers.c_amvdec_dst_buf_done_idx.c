
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct vb2_v4l2_buffer {int dummy; } ;
struct device {int dummy; } ;
struct amvdec_session {int * fw_idx_to_vb2_idx; int m2m_ctx; TYPE_1__* core; } ;
struct TYPE_2__ {struct device* dev_dec; } ;


 int amvdec_dst_buf_done (struct amvdec_session*,struct vb2_v4l2_buffer*,size_t) ;
 int amvdec_dst_buf_done_offset (struct amvdec_session*,struct vb2_v4l2_buffer*,size_t,size_t,int) ;
 int dev_err (struct device*,char*,size_t) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove_by_idx (int ,int ) ;

void amvdec_dst_buf_done_idx(struct amvdec_session *sess,
        u32 buf_idx, u32 offset, u32 field)
{
 struct vb2_v4l2_buffer *vbuf;
 struct device *dev = sess->core->dev_dec;

 vbuf = v4l2_m2m_dst_buf_remove_by_idx(sess->m2m_ctx,
           sess->fw_idx_to_vb2_idx[buf_idx]);

 if (!vbuf) {
  dev_err(dev,
   "Buffer %u done but it doesn't exist in m2m_ctx\n",
   buf_idx);
  return;
 }

 if (offset != -1)
  amvdec_dst_buf_done_offset(sess, vbuf, offset, field, 1);
 else
  amvdec_dst_buf_done(sess, vbuf, field);
}
