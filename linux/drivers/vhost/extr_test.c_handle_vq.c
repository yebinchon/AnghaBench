
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {int num; int mutex; int iov; void* private_data; } ;
struct vhost_test {int dev; struct vhost_virtqueue* vqs; } ;


 int ARRAY_SIZE (int ) ;
 size_t VHOST_TEST_VQ ;
 size_t iov_length (int ,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int vhost_add_used_and_signal (int *,struct vhost_virtqueue*,int,int ) ;
 int vhost_disable_notify (int *,struct vhost_virtqueue*) ;
 int vhost_enable_notify (int *,struct vhost_virtqueue*) ;
 int vhost_exceeds_weight (struct vhost_virtqueue*,int ,size_t) ;
 int vhost_get_vq_desc (struct vhost_virtqueue*,int ,int ,unsigned int*,unsigned int*,int *,int *) ;
 int vq_err (struct vhost_virtqueue*,char*,...) ;

__attribute__((used)) static void handle_vq(struct vhost_test *n)
{
 struct vhost_virtqueue *vq = &n->vqs[VHOST_TEST_VQ];
 unsigned out, in;
 int head;
 size_t len, total_len = 0;
 void *private;

 mutex_lock(&vq->mutex);
 private = vq->private_data;
 if (!private) {
  mutex_unlock(&vq->mutex);
  return;
 }

 vhost_disable_notify(&n->dev, vq);

 for (;;) {
  head = vhost_get_vq_desc(vq, vq->iov,
      ARRAY_SIZE(vq->iov),
      &out, &in,
      ((void*)0), ((void*)0));

  if (unlikely(head < 0))
   break;

  if (head == vq->num) {
   if (unlikely(vhost_enable_notify(&n->dev, vq))) {
    vhost_disable_notify(&n->dev, vq);
    continue;
   }
   break;
  }
  if (in) {
   vq_err(vq, "Unexpected descriptor format for TX: "
          "out %d, int %d\n", out, in);
   break;
  }
  len = iov_length(vq->iov, out);

  if (!len) {
   vq_err(vq, "Unexpected 0 len for TX\n");
   break;
  }
  vhost_add_used_and_signal(&n->dev, vq, head, 0);
  total_len += len;
  if (unlikely(vhost_exceeds_weight(vq, 0, total_len)))
   break;
 }

 mutex_unlock(&vq->mutex);
}
