
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
struct vhost_vsock {TYPE_1__ dev; struct vhost_virtqueue* vqs; } ;
struct vhost_virtqueue {int mutex; struct vhost_vsock* private_data; } ;


 size_t ARRAY_SIZE (struct vhost_virtqueue*) ;
 int EFAULT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vhost_dev_check_owner (TYPE_1__*) ;
 int vhost_vq_access_ok (struct vhost_virtqueue*) ;
 int vhost_vq_init_access (struct vhost_virtqueue*) ;

__attribute__((used)) static int vhost_vsock_start(struct vhost_vsock *vsock)
{
 struct vhost_virtqueue *vq;
 size_t i;
 int ret;

 mutex_lock(&vsock->dev.mutex);

 ret = vhost_dev_check_owner(&vsock->dev);
 if (ret)
  goto err;

 for (i = 0; i < ARRAY_SIZE(vsock->vqs); i++) {
  vq = &vsock->vqs[i];

  mutex_lock(&vq->mutex);

  if (!vhost_vq_access_ok(vq)) {
   ret = -EFAULT;
   goto err_vq;
  }

  if (!vq->private_data) {
   vq->private_data = vsock;
   ret = vhost_vq_init_access(vq);
   if (ret)
    goto err_vq;
  }

  mutex_unlock(&vq->mutex);
 }

 mutex_unlock(&vsock->dev.mutex);
 return 0;

err_vq:
 vq->private_data = ((void*)0);
 mutex_unlock(&vq->mutex);

 for (i = 0; i < ARRAY_SIZE(vsock->vqs); i++) {
  vq = &vsock->vqs[i];

  mutex_lock(&vq->mutex);
  vq->private_data = ((void*)0);
  mutex_unlock(&vq->mutex);
 }
err:
 mutex_unlock(&vsock->dev.mutex);
 return ret;
}
