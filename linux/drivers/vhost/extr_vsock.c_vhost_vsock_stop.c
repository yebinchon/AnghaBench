
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
struct vhost_vsock {TYPE_1__ dev; struct vhost_virtqueue* vqs; } ;
struct vhost_virtqueue {int mutex; int * private_data; } ;


 size_t ARRAY_SIZE (struct vhost_virtqueue*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vhost_dev_check_owner (TYPE_1__*) ;

__attribute__((used)) static int vhost_vsock_stop(struct vhost_vsock *vsock)
{
 size_t i;
 int ret;

 mutex_lock(&vsock->dev.mutex);

 ret = vhost_dev_check_owner(&vsock->dev);
 if (ret)
  goto err;

 for (i = 0; i < ARRAY_SIZE(vsock->vqs); i++) {
  struct vhost_virtqueue *vq = &vsock->vqs[i];

  mutex_lock(&vq->mutex);
  vq->private_data = ((void*)0);
  mutex_unlock(&vq->mutex);
 }

err:
 mutex_unlock(&vsock->dev.mutex);
 return ret;
}
