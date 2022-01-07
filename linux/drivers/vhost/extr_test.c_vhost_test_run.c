
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhost_virtqueue {int mutex; void* private_data; } ;
struct TYPE_2__ {int nvqs; int mutex; } ;
struct vhost_test {TYPE_1__ dev; struct vhost_virtqueue* vqs; } ;


 int EFAULT ;
 long EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vhost_dev_check_owner (TYPE_1__*) ;
 int vhost_test_flush_vq (struct vhost_test*,int) ;
 int vhost_vq_access_ok (struct vhost_virtqueue*) ;
 int vhost_vq_init_access (struct vhost_virtqueue*) ;

__attribute__((used)) static long vhost_test_run(struct vhost_test *n, int test)
{
 void *priv, *oldpriv;
 struct vhost_virtqueue *vq;
 int r, index;

 if (test < 0 || test > 1)
  return -EINVAL;

 mutex_lock(&n->dev.mutex);
 r = vhost_dev_check_owner(&n->dev);
 if (r)
  goto err;

 for (index = 0; index < n->dev.nvqs; ++index) {

  if (!vhost_vq_access_ok(&n->vqs[index])) {
   r = -EFAULT;
   goto err;
  }
 }

 for (index = 0; index < n->dev.nvqs; ++index) {
  vq = n->vqs + index;
  mutex_lock(&vq->mutex);
  priv = test ? n : ((void*)0);


  oldpriv = vq->private_data;
  vq->private_data = priv;

  r = vhost_vq_init_access(&n->vqs[index]);

  mutex_unlock(&vq->mutex);

  if (r)
   goto err;

  if (oldpriv) {
   vhost_test_flush_vq(n, index);
  }
 }

 mutex_unlock(&n->dev.mutex);
 return 0;

err:
 mutex_unlock(&n->dev.mutex);
 return r;
}
