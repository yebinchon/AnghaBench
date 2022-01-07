
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_queue {scalar_t__ type; } ;
struct amvdec_session {scalar_t__ status; scalar_t__ streamon_cap; int m2m_ctx; scalar_t__ streamon_out; int * priv; int vififo_paddr; int vififo_vaddr; int vififo_size; struct amvdec_core* core; int recycle_thread; } ;
struct amvdec_core {int * cur_sess; int dev; } ;


 scalar_t__ STATUS_NEEDS_RESUME ;
 scalar_t__ STATUS_RUNNING ;
 scalar_t__ STATUS_STOPPED ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 int VB2_BUF_STATE_ERROR ;
 int dma_free_coherent (int ,int ,int ,int ) ;
 int kfree (int *) ;
 int kthread_stop (int ) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;
 struct amvdec_session* vb2_get_drv_priv (struct vb2_queue*) ;
 scalar_t__ vdec_codec_needs_recycle (struct amvdec_session*) ;
 int vdec_free_canvas (struct amvdec_session*) ;
 int vdec_poweroff (struct amvdec_session*) ;
 int vdec_reset_bufs_recycle (struct amvdec_session*) ;
 int vdec_reset_timestamps (struct amvdec_session*) ;

__attribute__((used)) static void vdec_stop_streaming(struct vb2_queue *q)
{
 struct amvdec_session *sess = vb2_get_drv_priv(q);
 struct amvdec_core *core = sess->core;
 struct vb2_v4l2_buffer *buf;

 if (sess->status == STATUS_RUNNING ||
     (sess->status == STATUS_NEEDS_RESUME &&
      (!sess->streamon_out || !sess->streamon_cap))) {
  if (vdec_codec_needs_recycle(sess))
   kthread_stop(sess->recycle_thread);

  vdec_poweroff(sess);
  vdec_free_canvas(sess);
  dma_free_coherent(sess->core->dev, sess->vififo_size,
      sess->vififo_vaddr, sess->vififo_paddr);
  vdec_reset_timestamps(sess);
  vdec_reset_bufs_recycle(sess);
  kfree(sess->priv);
  sess->priv = ((void*)0);
  core->cur_sess = ((void*)0);
  sess->status = STATUS_STOPPED;
 }

 if (q->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
  while ((buf = v4l2_m2m_src_buf_remove(sess->m2m_ctx)))
   v4l2_m2m_buf_done(buf, VB2_BUF_STATE_ERROR);

  sess->streamon_out = 0;
 } else {
  while ((buf = v4l2_m2m_dst_buf_remove(sess->m2m_ctx)))
   v4l2_m2m_buf_done(buf, VB2_BUF_STATE_ERROR);

  sess->streamon_cap = 0;
 }
}
