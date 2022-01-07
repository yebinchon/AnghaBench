
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_buffer {int dummy; } ;
struct amvdec_session {int bufs_recycle_lock; int bufs_recycle; } ;
struct amvdec_buffer {int list; struct vb2_buffer* vb; } ;


 int GFP_KERNEL ;
 struct amvdec_buffer* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
vdec_queue_recycle(struct amvdec_session *sess, struct vb2_buffer *vb)
{
 struct amvdec_buffer *new_buf;

 new_buf = kmalloc(sizeof(*new_buf), GFP_KERNEL);
 new_buf->vb = vb;

 mutex_lock(&sess->bufs_recycle_lock);
 list_add_tail(&new_buf->list, &sess->bufs_recycle);
 mutex_unlock(&sess->bufs_recycle_lock);
}
