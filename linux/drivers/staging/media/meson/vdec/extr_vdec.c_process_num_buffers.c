
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {unsigned int num_buffers; int min_buffers_needed; } ;
struct amvdec_session {unsigned int num_dst_bufs; struct amvdec_format* fmt_out; } ;
struct amvdec_format {unsigned int min_buffers; unsigned int max_buffers; } ;


 int max (unsigned int,unsigned int) ;

__attribute__((used)) static void process_num_buffers(struct vb2_queue *q,
    struct amvdec_session *sess,
    unsigned int *num_buffers,
    bool is_reqbufs)
{
 const struct amvdec_format *fmt_out = sess->fmt_out;
 unsigned int buffers_total = q->num_buffers + *num_buffers;

 if (is_reqbufs && buffers_total < fmt_out->min_buffers)
  *num_buffers = fmt_out->min_buffers - q->num_buffers;
 if (buffers_total > fmt_out->max_buffers)
  *num_buffers = fmt_out->max_buffers - q->num_buffers;






 sess->num_dst_bufs = q->num_buffers + *num_buffers;
 q->min_buffers_needed = max(fmt_out->min_buffers, sess->num_dst_bufs);
}
